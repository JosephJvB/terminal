﻿<?xml version="1.0" encoding="utf-8"?>
<Project ToolsVersion="14.0" DefaultTargets="Build" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
  <PropertyGroup>
    <ProjectGuid>{C17E1BF3-9D34-4779-9458-A8EF98CC5662}</ProjectGuid>
    <OutputType>Library</OutputType>
    <AppDesignerFolder>Properties</AppDesignerFolder>
    <RootNamespace>Conhost.UIA.Tests</RootNamespace>
    <AssemblyName>Conhost.UIA.Tests</AssemblyName>
    <TargetFrameworkVersion>v4.5</TargetFrameworkVersion>
    <FileAlignment>512</FileAlignment>
    <ProjectTypeGuids>{3AC096D0-A1C2-E12C-1390-A8335801FDAB};{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}</ProjectTypeGuids>
    <VisualStudioVersion Condition="'$(VisualStudioVersion)' == ''">10.0</VisualStudioVersion>
    <VSToolsPath Condition="'$(VSToolsPath)' == ''">$(MSBuildExtensionsPath32)\Microsoft\VisualStudio\v$(VisualStudioVersion)</VSToolsPath>
    <ReferencePath>$(ProgramFiles)\Common Files\microsoft shared\VSTT\$(VisualStudioVersion)\UITestExtensionPackages</ReferencePath>
    <IsCodedUITest>False</IsCodedUITest>
    <TestProjectType>UnitTest</TestProjectType>
    <OutputPath>$(SolutionDir)\bin\$(Platform)\$(Configuration)</OutputPath>
    <ErrorReport>prompt</ErrorReport>
    <WarningLevel>4</WarningLevel>
    <NuGetPackageImportStamp>
    </NuGetPackageImportStamp>
  </PropertyGroup>
  <PropertyGroup Condition="'$(Platform)' == 'ARM64'">
    <PlatformTarget>ARM64</PlatformTarget>
  </PropertyGroup>
  <PropertyGroup Condition="'$(Platform)' == 'x64'">
    <PlatformTarget>x64</PlatformTarget>
  </PropertyGroup>
  <PropertyGroup Condition="'$(Platform)' == 'Win32'">
    <PlatformTarget>x86</PlatformTarget>
  </PropertyGroup>
  <PropertyGroup Condition="'$(Configuration)' == 'Debug'">
    <DebugSymbols>true</DebugSymbols>
    <DebugType>full</DebugType>
    <Optimize>false</Optimize>
    <DefineConstants>DEBUG;TRACE</DefineConstants>
  </PropertyGroup>
  <PropertyGroup Condition="'$(Configuration)' == 'Release'">
    <DebugType>pdbonly</DebugType>
    <Optimize>true</Optimize>
    <DefineConstants>TRACE</DefineConstants>
  </PropertyGroup>
  <ItemGroup>
    <Reference Include="appium-dotnet-driver, Version=3.0.0.2, Culture=neutral, processorArchitecture=MSIL">
      <HintPath>..\..\..\packages\Appium.WebDriver.3.0.0.2\lib\net45\appium-dotnet-driver.dll</HintPath>
    </Reference>
    <Reference Include="Castle.Core, Version=4.1.1.0, Culture=neutral, PublicKeyToken=407dd0808d44fbdc, processorArchitecture=MSIL">
      <HintPath>..\..\..\packages\Castle.Core.4.1.1\lib\net45\Castle.Core.dll</HintPath>
    </Reference>
    <Reference Include="Newtonsoft.Json, Version=10.0.0.0, Culture=neutral, PublicKeyToken=30ad4fe6b2a6aeed, processorArchitecture=MSIL">
      <HintPath>..\..\..\packages\Newtonsoft.Json.10.0.3\lib\net45\Newtonsoft.Json.dll</HintPath>
    </Reference>
    <Reference Include="System" />
    <Reference Include="System.Drawing" />
    <Reference Include="TE.Managed, Version=10.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35, processorArchitecture=MSIL">
      <HintPath>..\..\..\packages\Taef.Redist.Wlk.10.38.190610001-uapadmin\lib\net45\TE.Managed.dll</HintPath>
    </Reference>
    <Reference Include="UIAutomationClient" />
    <Reference Include="UIAutomationTypes" />
    <Reference Include="WebDriver, Version=3.5.0.0, Culture=neutral, processorArchitecture=MSIL">
      <HintPath>..\..\..\packages\Selenium.WebDriver.3.5.0\lib\net40\WebDriver.dll</HintPath>
    </Reference>
    <Reference Include="WebDriver.Support, Version=3.5.0.0, Culture=neutral, processorArchitecture=MSIL">
      <HintPath>..\..\..\packages\Selenium.Support.3.5.0\lib\net40\WebDriver.Support.dll</HintPath>
    </Reference>
    <Reference Include="Wex.Common.Managed, Version=10.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35, processorArchitecture=MSIL">
      <HintPath>..\..\..\packages\Taef.Redist.Wlk.10.38.190610001-uapadmin\lib\net45\Wex.Common.Managed.dll</HintPath>
    </Reference>
    <Reference Include="Wex.Logger.Interop, Version=10.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35, processorArchitecture=MSIL">
      <HintPath>..\..\..\packages\Taef.Redist.Wlk.10.38.190610001-uapadmin\lib\net45\Wex.Logger.Interop.dll</HintPath>
    </Reference>
    <Reference Include="WindowsBase" />
  </ItemGroup>
  <Choose>
    <When Condition="('$(VisualStudioVersion)' == '10.0' or '$(VisualStudioVersion)' == '') and '$(TargetFrameworkVersion)' == 'v3.5'">
      <ItemGroup>
        <Reference Include="Microsoft.VisualStudio.QualityTools.UnitTestFramework, Version=10.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a, processorArchitecture=MSIL" />
      </ItemGroup>
    </When>
    <Otherwise>
      <ItemGroup>
        <Reference Include="Microsoft.VisualStudio.QualityTools.UnitTestFramework" />
      </ItemGroup>
    </Otherwise>
  </Choose>
  <ItemGroup>
    <Compile Include="CloseTests.cs" />
    <Compile Include="Common\AutoHelpers.cs" />
    <Compile Include="Common\CheckBoxMeta.cs" />
    <Compile Include="Common\Globals.cs" />
    <Compile Include="Common\NativeMethods.cs" />
    <Compile Include="Common\RegistryHelper.cs" />
    <Compile Include="Common\ShortcutHelper.cs" />
    <Compile Include="Common\SliderMeta.cs" />
    <Compile Include="Common\VersionSelector.cs" />
    <Compile Include="Elements\CmdApp.cs" />
    <Compile Include="Elements\ColorsTab.cs" />
    <Compile Include="Elements\FontTab.cs" />
    <Compile Include="Elements\LayoutTab.cs" />
    <Compile Include="Elements\OptionsTab.cs" />
    <Compile Include="Elements\PropertiesDialog.cs" />
    <Compile Include="Elements\TabBase.cs" />
    <Compile Include="Elements\Tabs.cs" />
    <Compile Include="Elements\ViewportArea.cs" />
    <Compile Include="Elements\WinEventSystem.cs" />
    <Compile Include="AccessibilityTests.cs" />
    <Compile Include="ExperimentalTabTests.cs" />
    <Compile Include="Init.cs" />
    <Compile Include="InputBufferTests.cs" />
    <Compile Include="KeyPressTests.cs" />
    <Compile Include="MiscTests.cs" />
    <Compile Include="MouseWheelTests.cs" />
    <Compile Include="SelectionApiTests.cs" />
    <Compile Include="VirtualTerminalTests.cs" />
    <Compile Include="Properties\AssemblyInfo.cs" />
    <Compile Include="WinEventTests.cs" />
  </ItemGroup>
  <ItemGroup>
    <None Include="app.config" />
    <None Include="packages.config" />
  </ItemGroup>
  <Choose>
    <When Condition="'$(VisualStudioVersion)' == '10.0' And '$(IsCodedUITest)' == 'True'">
      <ItemGroup>
        <Reference Include="Microsoft.VisualStudio.QualityTools.CodedUITestFramework, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a, processorArchitecture=MSIL">
          <Private>False</Private>
        </Reference>
        <Reference Include="Microsoft.VisualStudio.TestTools.UITest.Common, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a, processorArchitecture=MSIL">
          <Private>False</Private>
        </Reference>
        <Reference Include="Microsoft.VisualStudio.TestTools.UITest.Extension, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a, processorArchitecture=MSIL">
          <Private>False</Private>
        </Reference>
        <Reference Include="Microsoft.VisualStudio.TestTools.UITesting, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a, processorArchitecture=MSIL">
          <Private>False</Private>
        </Reference>
      </ItemGroup>
    </When>
  </Choose>
  <Import Project="$(VSToolsPath)\TeamTest\Microsoft.TestTools.targets" Condition="Exists('$(VSToolsPath)\TeamTest\Microsoft.TestTools.targets')" />
  <Import Project="$(MSBuildToolsPath)\Microsoft.CSharp.targets" />
  <PropertyGroup>
    <PostBuildEvent>copy $(SolutionDir)\dep\WinAppDriver\* $(OutDir)\</PostBuildEvent>
  </PropertyGroup>
  <Import Project="..\..\..\packages\Taef.Redist.Wlk.10.38.190610001-uapadmin\build\Taef.Redist.Wlk.targets" Condition="Exists('..\..\..\packages\Taef.Redist.Wlk.10.38.190610001-uapadmin\build\Taef.Redist.Wlk.targets')" />
  <Target Name="EnsureNuGetPackageBuildImports" BeforeTargets="PrepareForBuild">
    <PropertyGroup>
      <ErrorText>This project references NuGet package(s) that are missing on this computer. Use NuGet Package Restore to download them.  For more information, see http://go.microsoft.com/fwlink/?LinkID=322105. The missing file is {0}.</ErrorText>
    </PropertyGroup>
    <Error Condition="!Exists('..\..\..\packages\Taef.Redist.Wlk.10.38.190610001-uapadmin\build\Taef.Redist.Wlk.targets')" Text="$([System.String]::Format('$(ErrorText)', '..\..\..\packages\Taef.Redist.Wlk.10.38.190610001-uapadmin\build\Taef.Redist.Wlk.targets'))" />
  </Target>
</Project>