.class Lcom/android/server/pm/PackageManagerService$OriginInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OriginInfo"
.end annotation


# instance fields
.field final existing:Z

.field final file:Ljava/io/File;

.field final resolvedFile:Ljava/io/File;

.field final resolvedPath:Ljava/lang/String;

.field final staged:Z


# direct methods
.method private constructor <init>(Ljava/io/File;ZZ)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "staged"    # Z
    .param p3, "existing"    # Z

    .line 15079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15080
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    .line 15081
    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    .line 15082
    iput-boolean p3, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    .line 15084
    if-eqz p1, :cond_0

    .line 15085
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    .line 15086
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    goto :goto_0

    .line 15088
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    .line 15089
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    .line 15091
    :goto_0
    return-void
.end method

.method static fromExistingFile(Ljava/io/File;)Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .line 15072
    new-instance v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/pm/PackageManagerService$OriginInfo;-><init>(Ljava/io/File;ZZ)V

    return-object v0
.end method

.method static fromNothing()Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .locals 3

    .line 15064
    new-instance v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/pm/PackageManagerService$OriginInfo;-><init>(Ljava/io/File;ZZ)V

    return-object v0
.end method

.method static fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .line 15076
    new-instance v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/pm/PackageManagerService$OriginInfo;-><init>(Ljava/io/File;ZZ)V

    return-object v0
.end method

.method static fromUntrustedFile(Ljava/io/File;)Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 15068
    new-instance v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/server/pm/PackageManagerService$OriginInfo;-><init>(Ljava/io/File;ZZ)V

    return-object v0
.end method
