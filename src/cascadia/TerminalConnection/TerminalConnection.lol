<?xml version="1.0" encoding="utf-8"?>
<Project DefaultTargets="Build" ToolsVersion="15.0" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
  <PropertyGroup Label="Globals">
    <ProjectGuid>{CA5CAD1A-C46D-4588-B1C0-40F31AE9100B}</ProjectGuid>
    <ProjectName>TerminalConnection</ProjectName>
    <RootNamespace>Microsoft.Terminal.TerminalConnection</RootNamespace>
    <ConfigurationType>DynamicLibrary</ConfigurationType>
    <SubSystem>Console</SubSystem>
    <OpenConsoleUniversalApp>true</OpenConsoleUniversalApp>

    <!--
      DON'T REDIRECT OUR OUTPUT.
      Setting this will tell cppwinrt.build.post.props to copy our output from
      the default OutDir up one level, so the wapproj will be able to find it.
     -->
    <NoOutputRedirection>true</NoOutputRedirection>
  </PropertyGroup>

  <Import Project="..\..\..\common.openconsole.props" Condition="'$(OpenConsoleDir)'==''" />
  <Import Project="$(OpenConsoleDir)src\cppwinrt.build.pre.props" />

  <ItemGroup>
    <ClInclude Include="AzureClientID.h" />
    <ClInclude Include="AzureConnection.h" />
    <ClInclude Include="pch.h" />
    <ClInclude Include="ConptyConnection.h">
      <DependentUpon>ConptyConnection.idl</DependentUpon>
    </ClInclude>
    <ClInclude Include="EchoConnection.h">
      <DependentUpon>EchoConnection.idl</DependentUpon>
    </ClInclude>
  </ItemGroup>
  <ItemGroup>
    <ClCompile Include="init.cpp"/>
    <ClCompile Include="AzureConnection.cpp" />
    <ClCompile Include="pch.cpp">
      <PrecompiledHeader>Create</PrecompiledHeader>
    </ClCompile>
    <ClCompile Include="EchoConnection.cpp">
      <DependentUpon>EchoConnection.idl</DependentUpon>
    </ClCompile>
    <ClCompile Include="ConptyConnection.cpp">
      <DependentUpon>ConptyConnection.idl</DependentUpon>
    </ClCompile>
    <ClCompile Include="$(GeneratedFilesDir)module.g.cpp" />
  </ItemGroup>
  <ItemGroup>
    <Midl Include="ITerminalConnection.idl" />
    <Midl Include="ConptyConnection.idl" />
    <Midl Include="EchoConnection.idl" />
    <Midl Include="AzureConnection.idl" />
  </ItemGroup>
  <ItemGroup>
    <PRIResource Include="Resources/en-US/Resources.resw" />
    <None Include="packages.config" />
  </ItemGroup>

  <!-- ========================= Project References ======================== -->
  <ItemGroup>
    <!--
      the packaging project won't recurse through our dependencies, you have to
      make sure that if you add a cppwinrt dependency to any of these projects,
      you also update all the consumers
    -->
    <ProjectReference Include="$(OpenConsoleDir)src\types\lib\types.vcxproj">
      <Project>{18D09A24-8240-42D6-8CB6-236EEE820263}</Project>
    </ProjectReference>

    <ProjectReference Include="$(OpenConsoleDir)src\cascadia\WinRTUtils\WinRTUtils.vcxproj">
      <Project>{CA5CAD1A-039A-4929-BA2A-8BEB2E4106FE}</Project>
      <ReferenceOutputAssembly>false</ReferenceOutputAssembly>
    </ProjectReference>

    <ProjectReference Include="..\..\winconpty\winconpty.vcxproj">
      <Project>{58a03bb2-df5a-4b66-91a0-7ef3ba01269a}</Project>
    </ProjectReference>
  </ItemGroup>

  <Import Project="$(OpenConsoleDir)src\cppwinrt.build.post.props" />

  <Import Project="..\..\..\packages\vcpkg-cpprestsdk.2.10.14\build\native\vcpkg-cpprestsdk.targets" Condition="Exists('..\..\..\packages\vcpkg-cpprestsdk.2.10.14\build\native\vcpkg-cpprestsdk.targets')" />
  <Target Name="EnsureNuGetPackageBuildImports" BeforeTargets="PrepareForBuild">
    <PropertyGroup>
      <ErrorText>This project references NuGet package(s) that are missing on this computer. Use NuGet Package Restore to download them.  For more information, see http://go.microsoft.com/fwlink/?LinkID=322105. The missing file is {0}.</ErrorText>
    </PropertyGroup>
    <Error Condition="!Exists('..\..\..\packages\vcpkg-cpprestsdk.2.10.14\build\native\vcpkg-cpprestsdk.targets')" Text="$([System.String]::Format('$(ErrorText)', '..\..\..\packages\vcpkg-cpprestsdk.2.10.14\build\native\vcpkg-cpprestsdk.targets'))" />
  </Target>

  <ItemDefinitionGroup>
    <Link>
      <AdditionalDependencies>$(OpenConsoleCommonOutDir)\conpty.lib;%(AdditionalDependencies)</AdditionalDependencies>
    </Link>
  </ItemDefinitionGroup>
</Project>