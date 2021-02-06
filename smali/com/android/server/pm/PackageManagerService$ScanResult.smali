.class Lcom/android/server/pm/PackageManagerService$ScanResult;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScanResult"
.end annotation


# instance fields
.field public final changedAbiCodePath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final dynamicSharedLibraryInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final existingSettingCopied:Z

.field public final pkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final request:Lcom/android/server/pm/PackageManagerService$ScanRequest;

.field public final staticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

.field public final success:Z


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$ScanRequest;ZLcom/android/server/pm/PackageSetting;Ljava/util/List;ZLandroid/content/pm/SharedLibraryInfo;Ljava/util/List;)V
    .locals 0
    .param p1, "request"    # Lcom/android/server/pm/PackageManagerService$ScanRequest;
    .param p2, "success"    # Z
    .param p3, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p5, "existingSettingCopied"    # Z
    .param p6, "staticSharedLibraryInfo"    # Landroid/content/pm/SharedLibraryInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService$ScanRequest;",
            "Z",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Landroid/content/pm/SharedLibraryInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;)V"
        }
    .end annotation

    .line 11141
    .local p4, "changedAbiCodePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "dynamicSharedLibraryInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11142
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ScanResult;->request:Lcom/android/server/pm/PackageManagerService$ScanRequest;

    .line 11143
    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$ScanResult;->success:Z

    .line 11144
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$ScanResult;->pkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 11145
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$ScanResult;->changedAbiCodePath:Ljava/util/List;

    .line 11146
    iput-boolean p5, p0, Lcom/android/server/pm/PackageManagerService$ScanResult;->existingSettingCopied:Z

    .line 11147
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$ScanResult;->staticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 11148
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$ScanResult;->dynamicSharedLibraryInfos:Ljava/util/List;

    .line 11149
    return-void
.end method
