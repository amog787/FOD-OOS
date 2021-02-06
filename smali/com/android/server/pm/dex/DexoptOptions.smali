.class public final Lcom/android/server/pm/dex/DexoptOptions;
.super Ljava/lang/Object;
.source "DexoptOptions.java"


# static fields
.field public static final DEXOPT_AS_SHARED_LIBRARY:I = 0x40

.field public static final DEXOPT_BOOT_COMPLETE:I = 0x4

.field public static final DEXOPT_CHECK_FOR_PROFILES_SIZE:I = 0x20000

.field public static final DEXOPT_CHECK_FOR_PROFILES_UPDATES:I = 0x1

.field public static final DEXOPT_CPUSET_ENABLE:I = 0x8000

.field public static final DEXOPT_DOWNGRADE:I = 0x20

.field public static final DEXOPT_FORCE:I = 0x2

.field public static final DEXOPT_FOR_RESTORE:I = 0x800

.field public static final DEXOPT_IDLE_BACKGROUND_JOB:I = 0x200

.field public static final DEXOPT_INSTALL_WITH_DEX_METADATA_FILE:I = 0x400

.field public static final DEXOPT_ONLY_SECONDARY_DEX:I = 0x8

.field public static final DEXOPT_ONLY_SHARED_DEX:I = 0x10

.field public static final DEXOPT_THREAD_NUMBER:I = 0x10000

.field public static final DEXOPT_WATCHDOG_TIMEOUT:I = 0x4000


# instance fields
.field private final mCompilationReason:I

.field private final mCompilerFilter:Ljava/lang/String;

.field private final mDexPath:Ljava/lang/String;

.field private final mFlags:I

.field private final mPackageName:Ljava/lang/String;

.field private final mSplitName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compilationReason"    # I
    .param p3, "flags"    # I

    .line 101
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compilationReason"    # I
    .param p3, "compilerFilter"    # Ljava/lang/String;
    .param p4, "splitName"    # Ljava/lang/String;
    .param p5, "flags"    # I

    .line 109
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compilerFilter"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .line 97
    const/4 v2, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dexPath"    # Ljava/lang/String;
    .param p3, "compilationReason"    # I
    .param p4, "compilerFilter"    # Ljava/lang/String;
    .param p5, "splitName"    # Ljava/lang/String;
    .param p6, "flags"    # I

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const v0, 0x3ce7f

    .line 133
    .local v0, "validityMask":I
    not-int v1, v0

    and-int/2addr v1, p6

    if-nez v1, :cond_0

    .line 137
    iput-object p1, p0, Lcom/android/server/pm/dex/DexoptOptions;->mPackageName:Ljava/lang/String;

    .line 138
    iput-object p4, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilerFilter:Ljava/lang/String;

    .line 139
    iput p6, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    .line 140
    iput-object p5, p0, Lcom/android/server/pm/dex/DexoptOptions;->mSplitName:Ljava/lang/String;

    .line 141
    iput p3, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilationReason:I

    .line 144
    iput-object p2, p0, Lcom/android/server/pm/dex/DexoptOptions;->mDexPath:Ljava/lang/String;

    .line 146
    return-void

    .line 134
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid flags : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getCompilationReason()I
    .locals 1

    .line 205
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilationReason:I

    return v0
.end method

.method public getCompilerFilter()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilerFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getDexPath()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mDexPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSplitName()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mSplitName:Ljava/lang/String;

    return-object v0
.end method

.method public isBootComplete()Z
    .locals 1

    .line 165
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCheckForProfileSize()Z
    .locals 2

    .line 227
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCheckForProfileUpdates()Z
    .locals 2

    .line 153
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isCpusetEnable()Z
    .locals 2

    .line 219
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDexoptAsSharedLibrary()Z
    .locals 1

    .line 181
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDexoptIdleBackgroundJob()Z
    .locals 1

    .line 185
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDexoptInstallForRestore()Z
    .locals 1

    .line 193
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDexoptInstallWithDexMetadata()Z
    .locals 1

    .line 189
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDexoptOnlySecondaryDex()Z
    .locals 1

    .line 169
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDexoptOnlySharedDex()Z
    .locals 1

    .line 173
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDowngrade()Z
    .locals 1

    .line 177
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isForce()Z
    .locals 1

    .line 161
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isThreadCountEnable()Z
    .locals 2

    .line 223
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWatchDogTimeout()Z
    .locals 1

    .line 215
    iget v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public overrideCompilerFilter(Ljava/lang/String;)Lcom/android/server/pm/dex/DexoptOptions;
    .locals 7
    .param p1, "newCompilerFilter"    # Ljava/lang/String;

    .line 236
    new-instance v6, Lcom/android/server/pm/dex/DexoptOptions;

    iget-object v1, p0, Lcom/android/server/pm/dex/DexoptOptions;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilationReason:I

    iget-object v4, p0, Lcom/android/server/pm/dex/DexoptOptions;->mSplitName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-object v6
.end method
