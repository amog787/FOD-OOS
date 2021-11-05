.class interface abstract Lcom/android/server/pm/parsing/pkg/PkgAppInfo;
.super Ljava/lang/Object;
.source "PkgAppInfo.java"


# virtual methods
.method public abstract getAppComponentFactory()Ljava/lang/String;
.end method

.method public abstract getBackupAgentName()Ljava/lang/String;
.end method

.method public abstract getBanner()I
.end method

.method public abstract getCategory()I
.end method

.method public abstract getClassLoaderName()Ljava/lang/String;
.end method

.method public abstract getClassName()Ljava/lang/String;
.end method

.method public abstract getCompatibleWidthLimitDp()I
.end method

.method public abstract getCompileSdkVersion()I
.end method

.method public abstract getCompileSdkVersionCodeName()Ljava/lang/String;
.end method

.method public abstract getDescriptionRes()I
.end method

.method public abstract getFullBackupContent()I
.end method

.method public abstract getIconRes()I
.end method

.method public abstract getInstallLocation()I
.end method

.method public abstract getLabelRes()I
.end method

.method public abstract getLargestWidthLimitDp()I
.end method

.method public abstract getLogo()I
.end method

.method public abstract getLongVersionCode()J
.end method

.method public abstract getManageSpaceActivityName()Ljava/lang/String;
.end method

.method public abstract getMaxAspectRatio()F
.end method

.method public abstract getMinAspectRatio()F
.end method

.method public abstract getMinSdkVersion()I
.end method

.method public abstract getNativeLibraryDir()Ljava/lang/String;
.end method

.method public abstract getNativeLibraryRootDir()Ljava/lang/String;
.end method

.method public abstract getNetworkSecurityConfigRes()I
.end method

.method public abstract getNonLocalizedLabel()Ljava/lang/CharSequence;
.end method

.method public abstract getPermission()Ljava/lang/String;
.end method

.method public abstract getPrimaryCpuAbi()Ljava/lang/String;
.end method

.method public abstract getProcessName()Ljava/lang/String;
.end method

.method public abstract getRequiresSmallestWidthDp()I
.end method

.method public abstract getRoundIconRes()I
.end method

.method public abstract getSeInfo()Ljava/lang/String;
.end method

.method public abstract getSeInfoUser()Ljava/lang/String;
.end method

.method public abstract getSecondaryCpuAbi()Ljava/lang/String;
.end method

.method public abstract getSecondaryNativeLibraryDir()Ljava/lang/String;
.end method

.method public abstract getSplitClassLoaderNames()[Ljava/lang/String;
.end method

.method public abstract getSplitCodePaths()[Ljava/lang/String;
.end method

.method public abstract getSplitDependencies()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end method

.method public abstract getTargetSandboxVersion()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getTargetSdkVersion()I
.end method

.method public abstract getTaskAffinity()Ljava/lang/String;
.end method

.method public abstract getTheme()I
.end method

.method public abstract getUiOptions()I
.end method

.method public abstract getUid()I
.end method

.method public abstract getVersionCode()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getVolumeUuid()Ljava/lang/String;
.end method

.method public abstract getZygotePreloadName()Ljava/lang/String;
.end method

.method public abstract isAllowAudioPlaybackCapture()Z
.end method

.method public abstract isAllowBackup()Z
.end method

.method public abstract isAllowClearUserData()Z
.end method

.method public abstract isAllowClearUserDataOnFailedRestore()Z
.end method

.method public abstract isAllowTaskReparenting()Z
.end method

.method public abstract isAnyDensity()Z
.end method

.method public abstract isBackupInForeground()Z
.end method

.method public abstract isBaseHardwareAccelerated()Z
.end method

.method public abstract isCantSaveState()Z
.end method

.method public abstract isDebuggable()Z
.end method

.method public abstract isDefaultToDeviceProtectedStorage()Z
.end method

.method public abstract isDirectBootAware()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isExternalStorage()Z
.end method

.method public abstract isExtractNativeLibs()Z
.end method

.method public abstract isFactoryTest()Z
.end method

.method public abstract isFullBackupOnly()Z
.end method

.method public abstract isGame()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isHasCode()Z
.end method

.method public abstract isHasDomainUrls()Z
.end method

.method public abstract isHasFragileUserData()Z
.end method

.method public abstract isIsolatedSplitLoading()Z
.end method

.method public abstract isKillAfterRestore()Z
.end method

.method public abstract isLargeHeap()Z
.end method

.method public abstract isMultiArch()Z
.end method

.method public abstract isNativeLibraryRootRequiresIsa()Z
.end method

.method public abstract isOdm()Z
.end method

.method public abstract isOem()Z
.end method

.method public abstract isOverlay()Z
.end method

.method public abstract isPartiallyDirectBootAware()Z
.end method

.method public abstract isPersistent()Z
.end method

.method public abstract isPrivileged()Z
.end method

.method public abstract isProduct()Z
.end method

.method public abstract isProfileableByShell()Z
.end method

.method public abstract isRequestLegacyExternalStorage()Z
.end method

.method public abstract isResizeable()Z
.end method

.method public abstract isResizeableActivityViaSdkVersion()Z
.end method

.method public abstract isRestoreAnyVersion()Z
.end method

.method public abstract isSignedWithPlatformKey()Z
.end method

.method public abstract isStaticSharedLibrary()Z
.end method

.method public abstract isSupportsExtraLargeScreens()Z
.end method

.method public abstract isSupportsLargeScreens()Z
.end method

.method public abstract isSupportsNormalScreens()Z
.end method

.method public abstract isSupportsRtl()Z
.end method

.method public abstract isSupportsSmallScreens()Z
.end method

.method public abstract isSystem()Z
.end method

.method public abstract isSystemExt()Z
.end method

.method public abstract isTestOnly()Z
.end method

.method public abstract isUseEmbeddedDex()Z
.end method

.method public abstract isUsesCleartextTraffic()Z
.end method

.method public abstract isUsesNonSdkApi()Z
.end method

.method public abstract isVendor()Z
.end method

.method public abstract isVmSafeMode()Z
.end method
