.class public Lcom/android/server/security/KeyAttestationApplicationIdProviderService;
.super Landroid/security/keymaster/IKeyAttestationApplicationIdProvider$Stub;
.source "KeyAttestationApplicationIdProviderService.java"


# instance fields
.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Landroid/security/keymaster/IKeyAttestationApplicationIdProvider$Stub;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 43
    return-void
.end method


# virtual methods
.method public getKeyAttestationApplicationId(I)Landroid/security/keymaster/KeyAttestationApplicationId;
    .locals 12
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3f9

    if-ne v0, v1, :cond_2

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "keyAttestationPackageInfos":[Landroid/security/keymaster/KeyAttestationPackageInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 55
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "packageNames":[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 59
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 60
    .local v4, "userId":I
    array-length v5, v3

    new-array v5, v5, [Landroid/security/keymaster/KeyAttestationPackageInfo;

    move-object v0, v5

    .line 62
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_0

    .line 63
    iget-object v6, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    aget-object v7, v3, v5

    const/16 v8, 0x40

    invoke-virtual {v6, v7, v8, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 65
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v7, Landroid/security/keymaster/KeyAttestationPackageInfo;

    aget-object v8, v3, v5

    .line 66
    invoke-virtual {v6}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v9

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/security/keymaster/KeyAttestationPackageInfo;-><init>(Ljava/lang/String;J[Landroid/content/pm/Signature;)V

    aput-object v7, v0, v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .end local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 71
    .end local v3    # "packageNames":[Ljava/lang/String;
    .end local v4    # "userId":I
    .end local v5    # "i":I
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 72
    nop

    .line 73
    new-instance v3, Landroid/security/keymaster/KeyAttestationApplicationId;

    invoke-direct {v3, v0}, Landroid/security/keymaster/KeyAttestationApplicationId;-><init>([Landroid/security/keymaster/KeyAttestationPackageInfo;)V

    return-object v3

    .line 57
    .restart local v3    # "packageNames":[Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v4, Landroid/os/RemoteException;

    const-string v5, "No packages for uid"

    invoke-direct {v4, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "keyAttestationPackageInfos":[Landroid/security/keymaster/KeyAttestationPackageInfo;
    .end local v1    # "token":J
    .end local p0    # "this":Lcom/android/server/security/KeyAttestationApplicationIdProviderService;
    .end local p1    # "uid":I
    throw v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .end local v3    # "packageNames":[Ljava/lang/String;
    .restart local v0    # "keyAttestationPackageInfos":[Landroid/security/keymaster/KeyAttestationPackageInfo;
    .restart local v1    # "token":J
    .restart local p0    # "this":Lcom/android/server/security/KeyAttestationApplicationIdProviderService;
    .restart local p1    # "uid":I
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 68
    :catch_0
    move-exception v3

    .line 69
    .local v3, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    new-instance v4, Landroid/os/RemoteException;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "keyAttestationPackageInfos":[Landroid/security/keymaster/KeyAttestationPackageInfo;
    .end local v1    # "token":J
    .end local p0    # "this":Lcom/android/server/security/KeyAttestationApplicationIdProviderService;
    .end local p1    # "uid":I
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    .end local v3    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "keyAttestationPackageInfos":[Landroid/security/keymaster/KeyAttestationPackageInfo;
    .restart local v1    # "token":J
    .restart local p0    # "this":Lcom/android/server/security/KeyAttestationApplicationIdProviderService;
    .restart local p1    # "uid":I
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 50
    .end local v0    # "keyAttestationPackageInfos":[Landroid/security/keymaster/KeyAttestationPackageInfo;
    .end local v1    # "token":J
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "This service can only be used by Keystore"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
