<?xml version="1.0" encoding="utf-8"?>
<Project DefaultTargets="Build" ToolsVersion="14.0" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
  <PropertyGroup Label="Globals">
    <ProjectGuid>{CA5CAD1A-039A-4929-BA2A-8BEB2E4106FE}</ProjectGuid>
    <Keyword>Win32Proj</Keyword>
    <RootNamespace>WinRTUtils</RootNamespace>
    <ProjectName>WinRTUtils</ProjectName>
    <TargetName>WinRTUtils</TargetName>
    <ConfigurationType>StaticLibrary</ConfigurationType>
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

  <!-- ========================= Headers ======================== -->
  <ItemGroup>
    <ClInclude Include="pch.h" />
    <ClInclude Include="inc\ScopedResourceLoader.h" />
    <ClInclude Include="inc\LibraryResources.h" />
  </ItemGroup>

  <!-- ========================= Cpp Files ======================== -->
  <ItemGroup>
    <ClCompile Include="pch.cpp">
      <PrecompiledHeader>Create</PrecompiledHeader>
    </ClCompile>

    <ClCompile Include="ScopedResourceLoader.cpp" />
    <ClCompile Include="LibraryResources.cpp" />
  </ItemGroup>
  <!-- ========================= idl Files ======================== -->
  <ItemGroup>
  </ItemGroup>

  <!-- ========================= Misc Files ======================== -->
  <ItemGroup>
    <None Include="packages.config" />
  </ItemGroup>

  <!-- ========================= Project References ======================== -->
  <ItemGroup>
    <ProjectReference Include="$(OpenConsoleDir)src\types\lib\types.vcxproj" />
  </ItemGroup>

  <!-- ====================== Compiler & Linker Flags ===================== -->
  <ItemDefinitionGroup>
    <ClCompile>
      <PrecompiledHeaderFile>pch.h</PrecompiledHeaderFile>
      <AdditionalIncludeDirectories>$(MSBuildThisFileDirectory)\inc;%(AdditionalIncludeDirectories)</AdditionalIncludeDirectories>
    </ClCompile>
  </ItemDefinitionGroup>

  <!-- ========================= Globals ======================== -->

  <Import Project="$(OpenConsoleDir)src\cppwinrt.build.post.props" />
</Project>