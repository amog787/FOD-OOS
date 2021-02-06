.class Lcom/android/server/security/FileIntegrityService$1;
.super Landroid/security/IFileIntegrityService$Stub;
.source "FileIntegrityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/FileIntegrityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/security/FileIntegrityService;


# direct methods
.method constructor <init>(Lcom/android/server/security/FileIntegrityService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/security/FileIntegrityService;

    .line 60
    iput-object p1, p0, Lcom/android/server/security/FileIntegrityService$1;->this$0:Lcom/android/server/security/FileIntegrityService;

    invoke-direct {p0}, Landroid/security/IFileIntegrityService$Stub;-><init>()V

    return-void
.end method

.method private checkCallerPermission(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 88
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 89
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 90
    .local v1, "callingUserId":I
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 91
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 92
    .local v2, "packageManager":Landroid/content/pm/PackageManagerInternal;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v3

    .line 94
    .local v3, "packageUid":I
    if-ne v0, v3, :cond_2

    .line 99
    iget-object v4, p0, Lcom/android/server/security/FileIntegrityService$1;->this$0:Lcom/android/server/security/FileIntegrityService;

    invoke-virtual {v4}, Lcom/android/server/security/FileIntegrityService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 101
    return-void

    .line 104
    :cond_0
    iget-object v4, p0, Lcom/android/server/security/FileIntegrityService$1;->this$0:Lcom/android/server/security/FileIntegrityService;

    invoke-virtual {v4}, Lcom/android/server/security/FileIntegrityService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Landroid/app/AppOpsManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    .line 105
    .local v4, "appOpsManager":Landroid/app/AppOpsManager;
    const/16 v5, 0x42

    invoke-virtual {v4, v5, v0, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v5

    .line 107
    .local v5, "mode":I
    if-nez v5, :cond_1

    .line 111
    return-void

    .line 108
    :cond_1
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Caller should have INSTALL_PACKAGES or REQUEST_INSTALL_PACKAGES"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 95
    .end local v4    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v5    # "mode":I
    :cond_2
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " does not own package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public isApkVeritySupported()Z
    .locals 3

    .line 63
    sget v0, Landroid/os/Build$VERSION;->FIRST_SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_0

    .line 64
    const-string v0, "ro.apk_verity.mode"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 63
    :cond_1
    return v1
.end method

.method public isAppSourceCertificateTrusted([BLjava/lang/String;)Z
    .locals 5
    .param p1, "certificateBytes"    # [B
    .param p2, "packageName"    # Ljava/lang/String;

    .line 70
    const-string v0, "FileIntegrityService"

    invoke-direct {p0, p2}, Lcom/android/server/security/FileIntegrityService$1;->checkCallerPermission(Ljava/lang/String;)V

    .line 73
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/security/FileIntegrityService$1;->isApkVeritySupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    return v1

    .line 76
    :cond_0
    if-nez p1, :cond_1

    .line 77
    const-string v2, "Received a null certificate"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return v1

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/android/server/security/FileIntegrityService$1;->this$0:Lcom/android/server/security/FileIntegrityService;

    invoke-static {v2}, Lcom/android/server/security/FileIntegrityService;->access$100(Lcom/android/server/security/FileIntegrityService;)Ljava/util/Collection;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/security/FileIntegrityService;->access$000([B)Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 81
    :catch_0
    move-exception v2

    .line 82
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to convert the certificate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return v1
.end method
