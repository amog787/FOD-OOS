.class public Lcom/android/server/uri/UriGrantsManagerService;
.super Landroid/app/IUriGrantsManager$Stub;
.source "UriGrantsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/uri/UriGrantsManagerService$LocalService;,
        Lcom/android/server/uri/UriGrantsManagerService$H;,
        Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ATTR_CREATED_TIME:Ljava/lang/String; = "createdTime"

.field private static final ATTR_MODE_FLAGS:Ljava/lang/String; = "modeFlags"

.field private static final ATTR_PREFIX:Ljava/lang/String; = "prefix"

.field private static final ATTR_SOURCE_PKG:Ljava/lang/String; = "sourcePkg"

.field private static final ATTR_SOURCE_USER_ID:Ljava/lang/String; = "sourceUserId"

.field private static final ATTR_TARGET_PKG:Ljava/lang/String; = "targetPkg"

.field private static final ATTR_TARGET_USER_ID:Ljava/lang/String; = "targetUserId"

.field private static final ATTR_URI:Ljava/lang/String; = "uri"

.field private static final ATTR_USER_HANDLE:Ljava/lang/String; = "userHandle"

.field private static final DEBUG:Z = false

.field private static final MAX_PERSISTED_URI_GRANTS:I = 0x80

.field private static final TAG:Ljava/lang/String; = "UriGrantsManagerService"

.field private static final TAG_URI_GRANT:Ljava/lang/String; = "uri-grant"

.field private static final TAG_URI_GRANTS:Ljava/lang/String; = "uri-grants"


# instance fields
.field mAmInternal:Landroid/app/ActivityManagerInternal;

.field private final mContext:Landroid/content/Context;

.field private final mGrantFile:Landroid/util/AtomicFile;

.field private final mGrantedUriPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/uri/GrantUri;",
            "Lcom/android/server/uri/UriPermission;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mH:Lcom/android/server/uri/UriGrantsManagerService$H;

.field private final mLock:Ljava/lang/Object;

.field mPmInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 146
    invoke-direct {p0}, Landroid/app/IUriGrantsManager$Stub;-><init>()V

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    .line 143
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 147
    iput-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mContext:Landroid/content/Context;

    .line 148
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$H;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriGrantsManagerService$H;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    .line 149
    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v0

    .line 150
    .local v0, "systemDir":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "urigrants.xml"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "uri-grants"

    invoke-direct {v1, v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    .line 151
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/uri/UriGrantsManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/server/uri/UriGrantsManagerService$1;

    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/uri/UriGrantsManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;

    .line 110
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->start()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/uri/UriGrantsManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;

    .line 110
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->writeGrantedUriPermissions()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;

    .line 110
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriPermission;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # Lcom/android/server/uri/UriPermission;

    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;

    .line 110
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;

    .line 110
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkHoldingPermissions(Landroid/content/pm/IPackageManager;Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z
    .locals 8
    .param p1, "pm"    # Landroid/content/pm/IPackageManager;
    .param p2, "pi"    # Landroid/content/pm/ProviderInfo;
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "uid"    # I
    .param p5, "modeFlags"    # I

    .line 875
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget v1, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v0, v1, :cond_0

    .line 876
    const/4 v0, -0x1

    const/4 v1, 0x1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v2, p4, v0, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    const/4 v0, 0x0

    return v0

    .line 881
    :cond_0
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsInternal(Landroid/content/pm/IPackageManager;Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z

    move-result v0

    return v0
.end method

.method private checkHoldingPermissionsInternal(Landroid/content/pm/IPackageManager;Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z
    .locals 16
    .param p1, "pm"    # Landroid/content/pm/IPackageManager;
    .param p2, "pi"    # Landroid/content/pm/ProviderInfo;
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "uid"    # I
    .param p5, "modeFlags"    # I
    .param p6, "considerUidPermissions"    # Z

    .line 886
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    iget-object v0, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v4, 0x1

    if-ne v0, v3, :cond_0

    .line 887
    return v4

    .line 888
    :cond_0
    iget-boolean v0, v2, Landroid/content/pm/ProviderInfo;->exported:Z

    const/4 v5, 0x0

    if-nez v0, :cond_1

    .line 889
    return v5

    .line 892
    :cond_1
    and-int/lit8 v0, p5, 0x1

    if-nez v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v5

    :goto_0
    move v6, v0

    .line 893
    .local v6, "readMet":Z
    and-int/lit8 v0, p5, 0x2

    if-nez v0, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v5

    :goto_1
    move v7, v0

    .line 896
    .local v7, "writeMet":Z
    if-nez v6, :cond_4

    :try_start_0
    iget-object v0, v2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v0, :cond_4

    if-eqz p6, :cond_4

    iget-object v0, v2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 897
    invoke-interface {v1, v0, v3}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    .line 898
    const/4 v6, 0x1

    goto :goto_2

    .line 958
    :catch_0
    move-exception v0

    move-object/from16 v10, p3

    goto/16 :goto_9

    .line 900
    :cond_4
    :goto_2
    if-nez v7, :cond_5

    iget-object v0, v2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-eqz v0, :cond_5

    if-eqz p6, :cond_5

    iget-object v0, v2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 901
    invoke-interface {v1, v0, v3}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_5

    .line 902
    const/4 v7, 0x1

    .line 907
    :cond_5
    iget-object v0, v2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-nez v0, :cond_6

    move v0, v4

    goto :goto_3

    :cond_6
    move v0, v5

    .line 908
    .local v0, "allowDefaultRead":Z
    :goto_3
    iget-object v8, v2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-nez v8, :cond_7

    move v8, v4

    goto :goto_4

    :cond_7
    move v8, v5

    .line 911
    .local v8, "allowDefaultWrite":Z
    :goto_4
    iget-object v9, v2, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    .local v9, "pps":[Landroid/content/pm/PathPermission;
    if-eqz v9, :cond_d

    .line 913
    move-object/from16 v10, p3

    :try_start_1
    iget-object v11, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 914
    .local v11, "path":Ljava/lang/String;
    array-length v12, v9

    .line 915
    .local v12, "i":I
    :goto_5
    if-lez v12, :cond_e

    if-eqz v6, :cond_8

    if-nez v7, :cond_e

    .line 916
    :cond_8
    add-int/lit8 v12, v12, -0x1

    .line 917
    aget-object v13, v9, v12

    .line 918
    .local v13, "pp":Landroid/content/pm/PathPermission;
    invoke-virtual {v13, v11}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 919
    if-nez v6, :cond_a

    .line 920
    invoke-virtual {v13}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v14

    .line 925
    .local v14, "pprperm":Ljava/lang/String;
    if-eqz v14, :cond_a

    .line 926
    if-eqz p6, :cond_9

    invoke-interface {v1, v14, v3}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v15

    if-nez v15, :cond_9

    .line 928
    const/4 v6, 0x1

    goto :goto_6

    .line 930
    :cond_9
    const/4 v0, 0x0

    .line 934
    .end local v14    # "pprperm":Ljava/lang/String;
    :cond_a
    :goto_6
    if-nez v7, :cond_c

    .line 935
    invoke-virtual {v13}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v14

    .line 940
    .local v14, "ppwperm":Ljava/lang/String;
    if-eqz v14, :cond_c

    .line 941
    if-eqz p6, :cond_b

    invoke-interface {v1, v14, v3}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v15
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v15, :cond_b

    .line 943
    const/4 v7, 0x1

    goto :goto_7

    .line 945
    :cond_b
    const/4 v8, 0x0

    .line 950
    .end local v13    # "pp":Landroid/content/pm/PathPermission;
    .end local v14    # "ppwperm":Ljava/lang/String;
    :cond_c
    :goto_7
    goto :goto_5

    .line 958
    .end local v0    # "allowDefaultRead":Z
    .end local v8    # "allowDefaultWrite":Z
    .end local v9    # "pps":[Landroid/content/pm/PathPermission;
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "i":I
    :catch_1
    move-exception v0

    goto :goto_9

    .line 912
    .restart local v0    # "allowDefaultRead":Z
    .restart local v8    # "allowDefaultWrite":Z
    .restart local v9    # "pps":[Landroid/content/pm/PathPermission;
    :cond_d
    move-object/from16 v10, p3

    .line 955
    :cond_e
    if-eqz v0, :cond_f

    const/4 v6, 0x1

    .line 956
    :cond_f
    if-eqz v8, :cond_10

    const/4 v7, 0x1

    .line 960
    .end local v0    # "allowDefaultRead":Z
    .end local v8    # "allowDefaultWrite":Z
    .end local v9    # "pps":[Landroid/content/pm/PathPermission;
    :cond_10
    nop

    .line 962
    if-eqz v6, :cond_11

    if-eqz v7, :cond_11

    goto :goto_8

    :cond_11
    move v4, v5

    :goto_8
    return v4

    .line 959
    .local v0, "e":Landroid/os/RemoteException;
    :goto_9
    return v5
.end method

.method private enforceNotIsolatedCaller(Ljava/lang/String;)V
    .locals 3
    .param p1, "caller"    # Ljava/lang/String;

    .line 998
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1001
    return-void

    .line 999
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Isolated process not allowed to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findOrCreateUriPermission(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;
    .locals 3
    .param p1, "sourcePkg"    # Ljava/lang/String;
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "targetUid"    # I
    .param p4, "grantUri"    # Lcom/android/server/uri/GrantUri;

    .line 709
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 710
    .local v0, "targetUris":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v0, :cond_0

    .line 711
    invoke-static {}, Lcom/google/android/collect/Maps;->newArrayMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 712
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 715
    :cond_0
    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriPermission;

    .line 716
    .local v1, "perm":Lcom/android/server/uri/UriPermission;
    if-nez v1, :cond_1

    .line 717
    new-instance v2, Lcom/android/server/uri/UriPermission;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/server/uri/UriPermission;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)V

    move-object v1, v2

    .line 718
    invoke-virtual {v0, p4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    :cond_1
    return-object v1
.end method

.method private findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;
    .locals 2
    .param p1, "targetUid"    # I
    .param p2, "grantUri"    # Lcom/android/server/uri/GrantUri;

    .line 983
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 984
    .local v0, "targetUris":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-eqz v0, :cond_0

    .line 985
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriPermission;

    return-object v1

    .line 987
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getPmInternal()Landroid/content/pm/PackageManagerInternal;
    .locals 1

    .line 1321
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_0

    .line 1322
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1324
    :cond_0
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method private getProviderInfo(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 3
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "pmFlags"    # I

    .line 1004
    const/4 v0, 0x0

    .line 1006
    .local v0, "pi":Landroid/content/pm/ProviderInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    or-int/lit16 v2, p3, 0x800

    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1010
    goto :goto_0

    .line 1009
    :catch_0
    move-exception v1

    .line 1011
    :goto_0
    return-object v0
.end method

.method private grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V
    .locals 4
    .param p1, "targetUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I
    .param p5, "owner"    # Lcom/android/server/uri/UriPermissionOwner;

    .line 726
    invoke-static {p4}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 727
    return-void

    .line 736
    :cond_0
    iget-object v0, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, "authority":Ljava/lang/String;
    iget v1, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0x10000000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 739
    .local v1, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v1, :cond_1

    .line 740
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No content provider found for grant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UriGrantsManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    return-void

    .line 744
    :cond_1
    and-int/lit16 v2, p4, 0x80

    if-eqz v2, :cond_2

    .line 745
    const/4 v2, 0x1

    iput-boolean v2, p3, Lcom/android/server/uri/GrantUri;->prefix:Z

    .line 747
    :cond_2
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2, p2, p1, p3}, Lcom/android/server/uri/UriGrantsManagerService;->findOrCreateUriPermission(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v2

    .line 749
    .local v2, "perm":Lcom/android/server/uri/UriPermission;
    invoke-virtual {v2, p4, p5}, Lcom/android/server/uri/UriPermission;->grantModes(ILcom/android/server/uri/UriPermissionOwner;)V

    .line 750
    return-void
.end method

.method private matchesProvider(Landroid/net/Uri;Landroid/content/pm/ProviderInfo;)Z
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "cpi"    # Landroid/content/pm/ProviderInfo;

    .line 497
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "uriAuth":Ljava/lang/String;
    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 499
    .local v1, "cpiAuth":Ljava/lang/String;
    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 500
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 502
    :cond_0
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 503
    .local v2, "cpiAuths":[Ljava/lang/String;
    array-length v3, v2

    .line 504
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 505
    aget-object v5, v2, v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    return v5

    .line 504
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 507
    .end local v4    # "i":I
    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method private maybePrunePersistedUriGrants(I)Z
    .locals 7
    .param p1, "uid"    # I

    .line 517
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 518
    .local v0, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 519
    :cond_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_1

    return v1

    .line 521
    :cond_1
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 522
    .local v2, "persisted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/uri/UriPermission;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/uri/UriPermission;

    .line 523
    .local v5, "perm":Lcom/android/server/uri/UriPermission;
    iget v6, v5, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v6, :cond_2

    .line 524
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    .end local v5    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_2
    goto :goto_0

    .line 528
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .line 529
    .local v4, "trimCount":I
    if-gtz v4, :cond_4

    return v1

    .line 531
    :cond_4
    new-instance v1, Lcom/android/server/uri/UriPermission$PersistedTimeComparator;

    invoke-direct {v1}, Lcom/android/server/uri/UriPermission$PersistedTimeComparator;-><init>()V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 532
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_5

    .line 533
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/UriPermission;

    .line 537
    .local v3, "perm":Lcom/android/server/uri/UriPermission;
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    .line 538
    invoke-direct {p0, v3}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V

    .line 532
    .end local v3    # "perm":Lcom/android/server/uri/UriPermission;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 541
    .end local v1    # "i":I
    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method private removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V
    .locals 3
    .param p1, "perm"    # Lcom/android/server/uri/UriPermission;

    .line 966
    iget v0, p1, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-eqz v0, :cond_0

    .line 967
    return-void

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/uri/UriPermission;->targetUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 971
    .local v0, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v0, :cond_1

    .line 972
    return-void

    .line 976
    :cond_1
    iget-object v1, p1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 978
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/uri/UriPermission;->targetUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 980
    :cond_2
    return-void
.end method

.method private schedulePersistUriGrants()V
    .locals 4

    .line 991
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/uri/UriGrantsManagerService$H;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    invoke-virtual {v0, v1}, Lcom/android/server/uri/UriGrantsManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/uri/UriGrantsManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 995
    :cond_0
    return-void
.end method

.method private start()V
    .locals 2

    .line 154
    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    new-instance v1, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;-><init>(Lcom/android/server/uri/UriGrantsManagerService;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method private writeGrantedUriPermissions()V
    .locals 11

    .line 1272
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1275
    .local v0, "startTime":J
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1276
    .local v2, "persist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/uri/UriPermission$Snapshot;>;"
    monitor-enter p0

    .line 1277
    :try_start_0
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1278
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 1279
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 1280
    .local v5, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/uri/UriPermission;

    .line 1281
    .local v7, "perm":Lcom/android/server/uri/UriPermission;
    iget v8, v7, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v8, :cond_0

    .line 1282
    invoke-virtual {v7}, Lcom/android/server/uri/UriPermission;->snapshot()Lcom/android/server/uri/UriPermission$Snapshot;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1284
    .end local v7    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_0
    goto :goto_1

    .line 1278
    .end local v5    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1286
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1288
    const/4 v3, 0x0

    .line 1290
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v0, v1}, Landroid/util/AtomicFile;->startWrite(J)Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v3, v4

    .line 1292
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1293
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1294
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1295
    const-string/jumbo v5, "uri-grants"

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1296
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/uri/UriPermission$Snapshot;

    .line 1297
    .local v7, "perm":Lcom/android/server/uri/UriPermission$Snapshot;
    const-string/jumbo v8, "uri-grant"

    invoke-interface {v4, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1298
    const-string/jumbo v8, "sourceUserId"

    iget-object v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget v9, v9, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    invoke-static {v4, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1299
    const-string/jumbo v8, "targetUserId"

    iget v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->targetUserId:I

    invoke-static {v4, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1300
    const-string/jumbo v8, "sourcePkg"

    iget-object v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->sourcePkg:Ljava/lang/String;

    invoke-interface {v4, v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1301
    const-string/jumbo v8, "targetPkg"

    iget-object v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->targetPkg:Ljava/lang/String;

    invoke-interface {v4, v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1302
    const-string/jumbo v8, "uri"

    iget-object v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v9, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1303
    const-string/jumbo v8, "prefix"

    iget-object v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget-boolean v9, v9, Lcom/android/server/uri/GrantUri;->prefix:Z

    invoke-static {v4, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1304
    const-string/jumbo v8, "modeFlags"

    iget v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->persistedModeFlags:I

    invoke-static {v4, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1305
    const-string v8, "createdTime"

    iget-wide v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->persistedCreateTime:J

    invoke-static {v4, v8, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1306
    const-string/jumbo v8, "uri-grant"

    invoke-interface {v4, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1307
    nop

    .end local v7    # "perm":Lcom/android/server/uri/UriPermission$Snapshot;
    goto :goto_2

    .line 1308
    :cond_3
    const-string/jumbo v5, "uri-grants"

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1309
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1311
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1316
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_3

    .line 1312
    :catch_0
    move-exception v4

    .line 1313
    .local v4, "e":Ljava/io/IOException;
    if-eqz v3, :cond_4

    .line 1314
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1317
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    return-void

    .line 1286
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method


# virtual methods
.method checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z
    .locals 5
    .param p1, "callingUid"    # I
    .param p2, "cpi"    # Landroid/content/pm/ProviderInfo;
    .param p3, "userId"    # I
    .param p4, "checkUser"    # Z

    .line 476
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v2, "UriGrantsManagerService"

    invoke-static {v2, v0, v1}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelAuth(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 478
    return v1

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 482
    .local v0, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-eqz v0, :cond_3

    .line 483
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 484
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/GrantUri;

    .line 485
    .local v3, "grantUri":Lcom/android/server/uri/GrantUri;
    iget v4, v3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v4, p3, :cond_1

    if-nez p4, :cond_2

    .line 486
    :cond_1
    iget-object v4, v3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-direct {p0, v4, p2}, Lcom/android/server/uri/UriGrantsManagerService;->matchesProvider(Landroid/net/Uri;Landroid/content/pm/ProviderInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 487
    return v1

    .line 483
    .end local v3    # "grantUri":Lcom/android/server/uri/GrantUri;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 492
    .end local v2    # "i":I
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    .locals 6
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "modeFlags"    # I
    .param p5, "userId"    # I

    .line 1218
    new-instance v3, Lcom/android/server/uri/GrantUri;

    const/4 v0, 0x0

    invoke-direct {v3, p5, p3, v0}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;Z)V

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermission(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v0

    return v0
.end method

.method checkGrantUriPermission(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I
    .locals 19
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I
    .param p5, "lastTargetUid"    # I

    .line 1025
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-static/range {p4 .. p4}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1026
    return v1

    .line 1029
    :cond_0
    nop

    .line 1033
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    .line 1036
    .local v13, "pm":Landroid/content/pm/IPackageManager;
    iget-object v0, v11, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1038
    return v1

    .line 1043
    :cond_1
    const/4 v0, 0x0

    .line 1048
    .local v0, "allowForceGrantPersistableUriPermission":Z
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    .line 1049
    .local v14, "callingAppId":I
    const/16 v2, 0x3e8

    const-string v3, "UriGrantsManagerService"

    if-eq v14, v2, :cond_2

    if-nez v14, :cond_5

    .line 1050
    :cond_2
    iget-object v2, v11, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.android.settings.files"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v11, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1051
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.android.settings.module_licenses"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 1060
    :cond_3
    const/high16 v2, -0x80000000

    and-int/2addr v2, v12

    if-eqz v2, :cond_4

    .line 1061
    const-string v2, "Allow FM to grant permission"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    const/4 v0, 0x1

    move v15, v0

    goto :goto_1

    .line 1065
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "For security reasons, the system cannot issue a Uri permission grant to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; use startActivityAsCaller() instead"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    return v1

    .line 1071
    :cond_5
    :goto_0
    move v15, v0

    .end local v0    # "allowForceGrantPersistableUriPermission":Z
    .local v15, "allowForceGrantPersistableUriPermission":Z
    :goto_1
    iget-object v0, v11, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    .line 1072
    .local v7, "authority":Ljava/lang/String;
    iget v0, v11, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0x10000000

    invoke-direct {v8, v7, v0, v2}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v6

    .line 1074
    .local v6, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v6, :cond_6

    .line 1075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No content provider found for permission check: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1076
    invoke-virtual {v2}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1075
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    return v1

    .line 1080
    :cond_6
    move/from16 v3, p5

    .line 1081
    .local v3, "targetUid":I
    if-gez v3, :cond_8

    if-eqz v10, :cond_8

    .line 1083
    nop

    .line 1084
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1083
    invoke-interface {v13, v10, v2, v0}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1085
    .end local v3    # "targetUid":I
    .local v0, "targetUid":I
    if-gez v0, :cond_7

    .line 1087
    return v1

    .line 1091
    :cond_7
    goto :goto_2

    .line 1089
    .end local v0    # "targetUid":I
    .restart local v3    # "targetUid":I
    :catch_0
    move-exception v0

    .line 1090
    .local v0, "ex":Landroid/os/RemoteException;
    return v1

    .line 1096
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_8
    move v0, v3

    .end local v3    # "targetUid":I
    .local v0, "targetUid":I
    :goto_2
    and-int/lit8 v1, v12, 0x40

    if-nez v1, :cond_a

    iget-boolean v1, v6, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    if-eqz v1, :cond_9

    goto :goto_3

    .line 1109
    :cond_9
    const/4 v1, -0x1

    move/from16 v16, v1

    .local v1, "allowedResult":I
    goto :goto_4

    .line 1101
    .end local v1    # "allowedResult":I
    :cond_a
    :goto_3
    move v1, v0

    .line 1104
    .restart local v1    # "allowedResult":I
    if-eqz v15, :cond_b

    return v0

    :cond_b
    move/from16 v16, v1

    .line 1112
    .end local v1    # "allowedResult":I
    .local v16, "allowedResult":I
    :goto_4
    if-ltz v0, :cond_c

    .line 1114
    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v6

    move-object/from16 v4, p3

    move v5, v0

    move-object/from16 v17, v7

    move-object v7, v6

    .end local v6    # "pi":Landroid/content/pm/ProviderInfo;
    .local v7, "pi":Landroid/content/pm/ProviderInfo;
    .local v17, "authority":Ljava/lang/String;
    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissions(Landroid/content/pm/IPackageManager;Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1118
    return v16

    .line 1122
    .end local v17    # "authority":Ljava/lang/String;
    .restart local v6    # "pi":Landroid/content/pm/ProviderInfo;
    .local v7, "authority":Ljava/lang/String;
    :cond_c
    move-object/from16 v17, v7

    move-object v7, v6

    .end local v6    # "pi":Landroid/content/pm/ProviderInfo;
    .local v7, "pi":Landroid/content/pm/ProviderInfo;
    .restart local v17    # "authority":Ljava/lang/String;
    iget-boolean v1, v7, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 1123
    .local v1, "allowed":Z
    and-int/lit8 v2, v12, 0x1

    if-eqz v2, :cond_d

    .line 1124
    iget-object v2, v7, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 1125
    const/4 v1, 0x0

    .line 1128
    :cond_d
    and-int/lit8 v2, v12, 0x2

    if-eqz v2, :cond_e

    .line 1129
    iget-object v2, v7, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 1130
    const/4 v1, 0x0

    .line 1133
    :cond_e
    iget-object v2, v7, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-eqz v2, :cond_11

    .line 1134
    iget-object v2, v7, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    array-length v2, v2

    .line 1135
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    if-ge v3, v2, :cond_11

    .line 1136
    iget-object v4, v7, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v4, v4, v3

    if-eqz v4, :cond_10

    iget-object v4, v7, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v4, v4, v3

    iget-object v5, v11, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1137
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1138
    and-int/lit8 v4, v12, 0x1

    if-eqz v4, :cond_f

    .line 1139
    iget-object v4, v7, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 1140
    const/4 v1, 0x0

    .line 1143
    :cond_f
    and-int/lit8 v4, v12, 0x2

    if-eqz v4, :cond_11

    .line 1144
    iget-object v4, v7, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 1145
    const/4 v1, 0x0

    goto :goto_6

    .line 1135
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1152
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_11
    :goto_6
    if-eqz v1, :cond_12

    .line 1153
    return v16

    .line 1163
    .end local v1    # "allowed":Z
    :cond_12
    if-ltz v0, :cond_14

    .line 1164
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget v2, v11, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v1, v2, :cond_13

    const/16 v18, 0x0

    .line 1165
    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v7

    move-object/from16 v4, p3

    move/from16 v5, p1

    move/from16 v6, p4

    move-object v10, v7

    .end local v7    # "pi":Landroid/content/pm/ProviderInfo;
    .local v10, "pi":Landroid/content/pm/ProviderInfo;
    move/from16 v7, v18

    invoke-direct/range {v1 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsInternal(Landroid/content/pm/IPackageManager;Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    goto :goto_8

    .line 1164
    .end local v10    # "pi":Landroid/content/pm/ProviderInfo;
    .restart local v7    # "pi":Landroid/content/pm/ProviderInfo;
    :cond_13
    move-object v10, v7

    .end local v7    # "pi":Landroid/content/pm/ProviderInfo;
    .restart local v10    # "pi":Landroid/content/pm/ProviderInfo;
    goto :goto_7

    .line 1163
    .end local v10    # "pi":Landroid/content/pm/ProviderInfo;
    .restart local v7    # "pi":Landroid/content/pm/ProviderInfo;
    :cond_14
    move-object v10, v7

    .line 1165
    .end local v7    # "pi":Landroid/content/pm/ProviderInfo;
    .restart local v10    # "pi":Landroid/content/pm/ProviderInfo;
    :cond_15
    :goto_7
    const/4 v1, 0x0

    :goto_8
    move v7, v1

    .line 1169
    .local v7, "specialCrossUserGrant":Z
    if-nez v7, :cond_1b

    .line 1170
    iget-boolean v1, v10, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    const-string v2, "/"

    const-string v3, "Provider "

    if-eqz v1, :cond_1a

    .line 1176
    iget-object v1, v10, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-eqz v1, :cond_1b

    .line 1177
    iget-object v1, v10, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v1, v1

    .line 1178
    .local v1, "N":I
    const/4 v4, 0x0

    .line 1179
    .local v4, "allowed":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_9
    if-ge v5, v1, :cond_18

    .line 1180
    iget-object v6, v10, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aget-object v6, v6, v5

    if-eqz v6, :cond_16

    iget-object v6, v10, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aget-object v6, v6, v5

    move/from16 v18, v1

    .end local v1    # "N":I
    .local v18, "N":I
    iget-object v1, v11, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1181
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1182
    const/4 v4, 0x1

    .line 1183
    goto :goto_a

    .line 1180
    .end local v18    # "N":I
    .restart local v1    # "N":I
    :cond_16
    move/from16 v18, v1

    .line 1179
    .end local v1    # "N":I
    .restart local v18    # "N":I
    :cond_17
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v18

    goto :goto_9

    .end local v18    # "N":I
    .restart local v1    # "N":I
    :cond_18
    move/from16 v18, v1

    .line 1186
    .end local v1    # "N":I
    .end local v5    # "i":I
    .restart local v18    # "N":I
    :goto_a
    if-eqz v4, :cond_19

    goto :goto_b

    .line 1187
    :cond_19
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not allow granting of permission to path of Uri "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1171
    .end local v4    # "allowed":Z
    .end local v18    # "N":I
    :cond_1a
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not allow granting of Uri permissions (uri "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1196
    :cond_1b
    :goto_b
    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v10

    move-object/from16 v4, p3

    move/from16 v5, p1

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissions(Landroid/content/pm/IPackageManager;Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1198
    invoke-virtual {v8, v11, v9, v12}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermission(Lcom/android/server/uri/GrantUri;II)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1199
    iget-object v1, v10, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    const-string v2, "android.permission.MANAGE_DOCUMENTS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, " does not have permission to "

    const-string v3, "UID "

    if-eqz v1, :cond_1c

    .line 1200
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; you could obtain access using ACTION_OPEN_DOCUMENT or related APIs"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1205
    :cond_1c
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1210
    :cond_1d
    return v0
.end method

.method checkGrantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;
    .locals 19
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "mode"    # I
    .param p5, "needed"    # Lcom/android/server/uri/NeededUriGrants;
    .param p6, "targetUserId"    # I

    .line 553
    move-object/from16 v8, p2

    move/from16 v9, p4

    move-object/from16 v7, p5

    if-eqz v8, :cond_e

    .line 557
    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 558
    return-object v1

    .line 560
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 561
    .local v10, "data":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v11

    .line 562
    .local v11, "clip":Landroid/content/ClipData;
    if-nez v10, :cond_1

    if-nez v11, :cond_1

    .line 563
    return-object v1

    .line 566
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getContentUserHint()I

    move-result v0

    .line 567
    .local v0, "contentUserHint":I
    const/4 v2, -0x2

    if-ne v0, v2, :cond_2

    .line 568
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    move v12, v0

    goto :goto_0

    .line 567
    :cond_2
    move v12, v0

    .line 570
    .end local v0    # "contentUserHint":I
    .local v12, "contentUserHint":I
    :goto_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    .line 572
    .local v13, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v7, :cond_3

    .line 573
    iget v0, v7, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    move/from16 v14, p6

    .local v0, "targetUid":I
    goto :goto_1

    .line 576
    .end local v0    # "targetUid":I
    :cond_3
    const/high16 v0, 0x10000000

    move/from16 v14, p6

    :try_start_0
    invoke-interface {v13, v8, v0, v14}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    .restart local v0    # "targetUid":I
    nop

    .line 580
    if-gez v0, :cond_4

    .line 583
    return-object v1

    .line 586
    :cond_4
    :goto_1
    if-eqz v10, :cond_6

    .line 587
    invoke-static {v12, v10}, Lcom/android/server/uri/GrantUri;->resolve(ILandroid/net/Uri;)Lcom/android/server/uri/GrantUri;

    move-result-object v15

    .line 588
    .local v15, "grantUri":Lcom/android/server/uri/GrantUri;
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v15

    move/from16 v5, p4

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermission(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v0

    .line 589
    if-lez v0, :cond_6

    .line 590
    if-nez v7, :cond_5

    .line 591
    new-instance v1, Lcom/android/server/uri/NeededUriGrants;

    invoke-direct {v1, v8, v0, v9}, Lcom/android/server/uri/NeededUriGrants;-><init>(Ljava/lang/String;II)V

    .end local p5    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .local v1, "needed":Lcom/android/server/uri/NeededUriGrants;
    goto :goto_2

    .line 590
    .end local v1    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .restart local p5    # "needed":Lcom/android/server/uri/NeededUriGrants;
    :cond_5
    move-object v1, v7

    .line 593
    .end local p5    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .restart local v1    # "needed":Lcom/android/server/uri/NeededUriGrants;
    :goto_2
    invoke-virtual {v1, v15}, Lcom/android/server/uri/NeededUriGrants;->add(Ljava/lang/Object;)Z

    move-object v7, v1

    .line 596
    .end local v1    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .end local v15    # "grantUri":Lcom/android/server/uri/GrantUri;
    .local v7, "needed":Lcom/android/server/uri/NeededUriGrants;
    :cond_6
    if-eqz v11, :cond_d

    .line 597
    const/4 v1, 0x0

    move/from16 v16, v0

    move v0, v1

    move-object v15, v7

    .end local v7    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .local v0, "i":I
    .local v15, "needed":Lcom/android/server/uri/NeededUriGrants;
    .local v16, "targetUid":I
    :goto_3
    invoke-virtual {v11}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 598
    invoke-virtual {v11, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 599
    .local v7, "uri":Landroid/net/Uri;
    if-eqz v7, :cond_9

    .line 600
    invoke-static {v12, v7}, Lcom/android/server/uri/GrantUri;->resolve(ILandroid/net/Uri;)Lcom/android/server/uri/GrantUri;

    move-result-object v6

    .line 601
    .local v6, "grantUri":Lcom/android/server/uri/GrantUri;
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v6

    move/from16 v5, p4

    move-object/from16 p5, v7

    move-object v7, v6

    .end local v6    # "grantUri":Lcom/android/server/uri/GrantUri;
    .local v7, "grantUri":Lcom/android/server/uri/GrantUri;
    .local p5, "uri":Landroid/net/Uri;
    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermission(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v1

    .line 603
    .end local v16    # "targetUid":I
    .local v1, "targetUid":I
    if-lez v1, :cond_8

    .line 604
    if-nez v15, :cond_7

    .line 605
    new-instance v2, Lcom/android/server/uri/NeededUriGrants;

    invoke-direct {v2, v8, v1, v9}, Lcom/android/server/uri/NeededUriGrants;-><init>(Ljava/lang/String;II)V

    move-object v15, v2

    .line 607
    :cond_7
    invoke-virtual {v15, v7}, Lcom/android/server/uri/NeededUriGrants;->add(Ljava/lang/Object;)Z

    .line 609
    .end local v7    # "grantUri":Lcom/android/server/uri/GrantUri;
    :cond_8
    move/from16 v16, v1

    goto :goto_4

    .line 610
    .end local v1    # "targetUid":I
    .end local p5    # "uri":Landroid/net/Uri;
    .local v7, "uri":Landroid/net/Uri;
    .restart local v16    # "targetUid":I
    :cond_9
    move-object/from16 p5, v7

    .end local v7    # "uri":Landroid/net/Uri;
    .restart local p5    # "uri":Landroid/net/Uri;
    invoke-virtual {v11, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 611
    .local v17, "clipIntent":Landroid/content/Intent;
    if-eqz v17, :cond_a

    .line 612
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, v17

    move/from16 v5, p4

    move-object v6, v15

    move-object/from16 v18, p5

    .end local p5    # "uri":Landroid/net/Uri;
    .local v18, "uri":Landroid/net/Uri;
    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v1

    .line 614
    .local v1, "newNeeded":Lcom/android/server/uri/NeededUriGrants;
    if-eqz v1, :cond_b

    .line 615
    move-object v15, v1

    goto :goto_4

    .line 611
    .end local v1    # "newNeeded":Lcom/android/server/uri/NeededUriGrants;
    .end local v18    # "uri":Landroid/net/Uri;
    .restart local p5    # "uri":Landroid/net/Uri;
    :cond_a
    move-object/from16 v18, p5

    .line 597
    .end local v17    # "clipIntent":Landroid/content/Intent;
    .end local p5    # "uri":Landroid/net/Uri;
    :cond_b
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    move/from16 v0, v16

    goto :goto_5

    .line 596
    .end local v15    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .end local v16    # "targetUid":I
    .local v0, "targetUid":I
    .local v7, "needed":Lcom/android/server/uri/NeededUriGrants;
    :cond_d
    move-object v15, v7

    .line 622
    .end local v7    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .restart local v15    # "needed":Lcom/android/server/uri/NeededUriGrants;
    :goto_5
    return-object v15

    .line 577
    .end local v0    # "targetUid":I
    .end local v15    # "needed":Lcom/android/server/uri/NeededUriGrants;
    .local p5, "needed":Lcom/android/server/uri/NeededUriGrants;
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 578
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v1

    .line 554
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v10    # "data":Landroid/net/Uri;
    .end local v11    # "clip":Landroid/content/ClipData;
    .end local v12    # "contentUserHint":I
    .end local v13    # "pm":Landroid/content/pm/IPackageManager;
    :cond_e
    move/from16 v14, p6

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "targetPkg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkUriPermission(Lcom/android/server/uri/GrantUri;II)Z
    .locals 11
    .param p1, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p2, "uid"    # I
    .param p3, "modeFlags"    # I

    .line 1223
    and-int/lit8 v0, p3, 0x40

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1224
    .local v0, "persistable":Z
    :goto_0
    if-eqz v0, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    .line 1225
    :cond_1
    move v3, v2

    :goto_1
    nop

    .line 1228
    .local v3, "minStrength":I
    if-nez p2, :cond_2

    .line 1229
    return v2

    .line 1232
    :cond_2
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 1233
    .local v4, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v4, :cond_3

    return v1

    .line 1236
    :cond_3
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/uri/UriPermission;

    .line 1239
    .local v5, "exactPerm":Lcom/android/server/uri/UriPermission;
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    iget-object v7, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1240
    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    .line 1239
    const-string v8, "UriGrantsManagerService"

    invoke-static {v8, v6, v7}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelAuth(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1241
    if-nez v5, :cond_4

    .line 1242
    new-instance v6, Lcom/android/server/uri/GrantUri;

    iget-object v7, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-boolean v8, p1, Lcom/android/server/uri/GrantUri;->prefix:Z

    invoke-direct {v6, v1, v7, v8}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;Z)V

    .line 1245
    .local v6, "newGrantUri":Lcom/android/server/uri/GrantUri;
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/uri/UriPermission;

    .line 1246
    .local v7, "newExactPerm":Lcom/android/server/uri/UriPermission;
    if-eqz v7, :cond_4

    invoke-virtual {v7, p3}, Lcom/android/server/uri/UriPermission;->getStrength(I)I

    move-result v8

    if-lt v8, v3, :cond_4

    .line 1247
    return v2

    .line 1252
    .end local v6    # "newGrantUri":Lcom/android/server/uri/GrantUri;
    .end local v7    # "newExactPerm":Lcom/android/server/uri/UriPermission;
    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5, p3}, Lcom/android/server/uri/UriPermission;->getStrength(I)I

    move-result v6

    if-lt v6, v3, :cond_5

    .line 1253
    return v2

    .line 1257
    :cond_5
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1258
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v6, :cond_7

    .line 1259
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission;

    .line 1260
    .local v8, "perm":Lcom/android/server/uri/UriPermission;
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-boolean v9, v9, Lcom/android/server/uri/GrantUri;->prefix:Z

    if-eqz v9, :cond_6

    iget-object v9, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v10, v8, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v10, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1261
    invoke-virtual {v8, p3}, Lcom/android/server/uri/UriPermission;->getStrength(I)I

    move-result v9

    if-lt v9, v3, :cond_6

    .line 1262
    return v2

    .line 1258
    .end local v8    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1266
    .end local v7    # "i":I
    :cond_7
    return v1
.end method

.method public clearGrantedUriPermissions(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 350
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CLEAR_APP_GRANTED_URI_PERMISSIONS"

    const-string v2, "clearGrantedUriPermissions"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v1, v1}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionsForPackage(Ljava/lang/String;IZZ)V

    .line 354
    monitor-exit v0

    .line 355
    return-void

    .line 354
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/GrantedUriPermission;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.GET_APP_GRANTED_URI_PERMISSIONS"

    const-string v2, "getGrantedUriPermissions"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/GrantedUriPermission;>;"
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    :try_start_0
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 278
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 279
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 280
    .local v4, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 281
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/uri/UriPermission;

    .line 282
    .local v6, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_0

    iget-object v7, v6, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    iget v7, v6, Lcom/android/server/uri/UriPermission;->targetUserId:I

    if-ne v7, p2, :cond_1

    iget v7, v6, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v7, :cond_1

    .line 285
    invoke-virtual {v6}, Lcom/android/server/uri/UriPermission;->buildGrantedUriPermission()Landroid/app/GrantedUriPermission;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    .end local v6    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 278
    .end local v4    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .end local v5    # "j":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 289
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 289
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getUriPermissions(Ljava/lang/String;ZZ)Landroid/content/pm/ParceledListSlice;
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "incoming"    # Z
    .param p3, "persistedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/UriPermission;",
            ">;"
        }
    .end annotation

    .line 218
    const-string v0, "getUriPermissions"

    invoke-direct {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 219
    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 222
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 223
    .local v1, "callingUserId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 225
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    const/high16 v3, 0xc0000

    :try_start_0
    invoke-interface {v2, p1, v3, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .local v3, "packageUid":I
    if-ne v3, v0, :cond_9

    .line 233
    .end local v3    # "packageUid":I
    nop

    .line 235
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 236
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriPermission;>;"
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 237
    const/4 v3, 0x0

    if-eqz p2, :cond_4

    .line 238
    :try_start_1
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 240
    .local v6, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v6, :cond_0

    .line 241
    const-string v3, "UriGrantsManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No permission grants found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 243
    :cond_0
    nop

    .local v3, "j":I
    :goto_0
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 244
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/uri/UriPermission;

    .line 245
    .local v7, "perm":Lcom/android/server/uri/UriPermission;
    iget-object v8, v7, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz p3, :cond_1

    iget v8, v7, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v8, :cond_2

    .line 247
    :cond_1
    invoke-virtual {v7}, Lcom/android/server/uri/UriPermission;->buildPersistedPublicApiObject()Landroid/content/UriPermission;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .end local v7    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 251
    .end local v3    # "j":I
    .end local v6    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_3
    :goto_1
    goto :goto_4

    .line 252
    :cond_4
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 253
    .local v6, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v6, :cond_8

    .line 254
    iget-object v8, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 255
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    .line 256
    .local v8, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    move v9, v3

    .local v9, "j":I
    :goto_3
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v9, v10, :cond_7

    .line 257
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/uri/UriPermission;

    .line 258
    .local v10, "perm":Lcom/android/server/uri/UriPermission;
    iget-object v11, v10, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz p3, :cond_5

    iget v11, v10, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v11, :cond_6

    .line 260
    :cond_5
    invoke-virtual {v10}, Lcom/android/server/uri/UriPermission;->buildPersistedPublicApiObject()Landroid/content/UriPermission;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .end local v10    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 253
    .end local v8    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .end local v9    # "j":I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 265
    .end local v6    # "size":I
    .end local v7    # "i":I
    :cond_8
    :goto_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v3

    .line 265
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 228
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriPermission;>;"
    .local v3, "packageUid":I
    :cond_9
    :try_start_3
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " does not belong to calling UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingUid":I
    .end local v1    # "callingUserId":I
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "incoming":Z
    .end local p3    # "persistedOnly":Z
    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 231
    .end local v3    # "packageUid":I
    .restart local v0    # "callingUid":I
    .restart local v1    # "callingUserId":I
    .restart local v2    # "pm":Landroid/content/pm/IPackageManager;
    .restart local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "incoming":Z
    .restart local p3    # "persistedOnly":Z
    :catch_0
    move-exception v3

    .line 232
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Failed to verify package name ownership"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method grantUriPermission(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;I)V
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I
    .param p5, "owner"    # Lcom/android/server/uri/UriPermissionOwner;
    .param p6, "targetUserId"    # I

    .line 766
    if-eqz p2, :cond_1

    .line 770
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 772
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    const/high16 v1, 0x10000000

    :try_start_0
    invoke-interface {v0, p2, v1, p6}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    .local v7, "targetUid":I
    nop

    .line 777
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermission(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v7

    .line 778
    if-gez v7, :cond_0

    .line 779
    return-void

    .line 782
    :cond_0
    move-object v1, p0

    move v2, v7

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V

    .line 783
    return-void

    .line 773
    .end local v7    # "targetUid":I
    :catch_0
    move-exception v1

    .line 774
    .local v1, "ex":Landroid/os/RemoteException;
    return-void

    .line 767
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "targetPkg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method grantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/uri/UriPermissionOwner;I)V
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "owner"    # Lcom/android/server/uri/UriPermissionOwner;
    .param p5, "targetUserId"    # I

    .line 627
    nop

    .line 628
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    const/4 v6, 0x0

    .line 627
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v0

    .line 629
    .local v0, "needed":Lcom/android/server/uri/NeededUriGrants;
    if-nez v0, :cond_1

    .line 630
    return-void

    .line 633
    :cond_1
    invoke-virtual {p0, v0, p4}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 634
    return-void
.end method

.method public grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    .locals 18
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fromUid"    # I
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "modeFlags"    # I
    .param p6, "sourceUserId"    # I
    .param p7, "targetUserId"    # I

    .line 188
    move-object/from16 v8, p0

    move-object/from16 v9, p4

    iget-object v10, v8, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 189
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 188
    const/4 v14, 0x0

    const/4 v15, 0x2

    const-string v16, "grantUriPermissionFromOwner"

    const/16 v17, 0x0

    move/from16 v13, p7

    invoke-virtual/range {v10 .. v17}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 191
    .end local p7    # "targetUserId":I
    .local v10, "targetUserId":I
    iget-object v11, v8, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 192
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/uri/UriPermissionOwner;->fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 193
    .local v0, "owner":Lcom/android/server/uri/UriPermissionOwner;
    if-eqz v0, :cond_4

    .line 196
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move/from16 v12, p2

    if-eq v12, v1, :cond_1

    .line 197
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "nice try"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v10    # "targetUserId":I
    .end local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "fromUid":I
    .end local p3    # "targetPkg":Ljava/lang/String;
    .end local p4    # "uri":Landroid/net/Uri;
    .end local p5    # "modeFlags":I
    .end local p6    # "sourceUserId":I
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    .end local v0    # "owner":Lcom/android/server/uri/UriPermissionOwner;
    .restart local v10    # "targetUserId":I
    .restart local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "fromUid":I
    .restart local p3    # "targetPkg":Ljava/lang/String;
    .restart local p4    # "uri":Landroid/net/Uri;
    .restart local p5    # "modeFlags":I
    .restart local p6    # "sourceUserId":I
    :catchall_0
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_3

    .line 203
    .restart local v0    # "owner":Lcom/android/server/uri/UriPermissionOwner;
    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    .line 206
    if-eqz v9, :cond_2

    .line 210
    :try_start_3
    new-instance v4, Lcom/android/server/uri/GrantUri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v1, 0x0

    move/from16 v13, p6

    :try_start_4
    invoke-direct {v4, v13, v9, v1}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;Z)V

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p5

    move-object v6, v0

    move v7, v10

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermission(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;I)V

    .line 212
    .end local v0    # "owner":Lcom/android/server/uri/UriPermissionOwner;
    monitor-exit v11

    .line 213
    return-void

    .line 212
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 207
    .restart local v0    # "owner":Lcom/android/server/uri/UriPermissionOwner;
    :cond_2
    move/from16 v13, p6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "null uri"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v10    # "targetUserId":I
    .end local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "fromUid":I
    .end local p3    # "targetPkg":Ljava/lang/String;
    .end local p4    # "uri":Landroid/net/Uri;
    .end local p5    # "modeFlags":I
    .end local p6    # "sourceUserId":I
    throw v1

    .line 204
    .restart local v10    # "targetUserId":I
    .restart local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "fromUid":I
    .restart local p3    # "targetPkg":Ljava/lang/String;
    .restart local p4    # "uri":Landroid/net/Uri;
    .restart local p5    # "modeFlags":I
    .restart local p6    # "sourceUserId":I
    :cond_3
    move/from16 v13, p6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "null target"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v10    # "targetUserId":I
    .end local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "fromUid":I
    .end local p3    # "targetPkg":Ljava/lang/String;
    .end local p4    # "uri":Landroid/net/Uri;
    .end local p5    # "modeFlags":I
    .end local p6    # "sourceUserId":I
    throw v1

    .line 212
    .end local v0    # "owner":Lcom/android/server/uri/UriPermissionOwner;
    .restart local v10    # "targetUserId":I
    .restart local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "fromUid":I
    .restart local p3    # "targetPkg":Ljava/lang/String;
    .restart local p4    # "uri":Landroid/net/Uri;
    .restart local p5    # "modeFlags":I
    .restart local p6    # "sourceUserId":I
    :catchall_2
    move-exception v0

    move/from16 v12, p2

    :goto_1
    move/from16 v13, p6

    :goto_2
    move-object/from16 v3, p1

    goto :goto_4

    .line 194
    .restart local v0    # "owner":Lcom/android/server/uri/UriPermissionOwner;
    :cond_4
    move/from16 v12, p2

    move/from16 v13, p6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown owner: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v3, p1

    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v10    # "targetUserId":I
    .end local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "fromUid":I
    .end local p3    # "targetPkg":Ljava/lang/String;
    .end local p4    # "uri":Landroid/net/Uri;
    .end local p5    # "modeFlags":I
    .end local p6    # "sourceUserId":I
    throw v1

    .line 212
    .end local v0    # "owner":Lcom/android/server/uri/UriPermissionOwner;
    .restart local v10    # "targetUserId":I
    .restart local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "fromUid":I
    .restart local p3    # "targetPkg":Ljava/lang/String;
    .restart local p4    # "uri":Landroid/net/Uri;
    .restart local p5    # "modeFlags":I
    .restart local p6    # "sourceUserId":I
    :catchall_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object/from16 v3, p1

    move/from16 v12, p2

    :goto_3
    move/from16 v13, p6

    :goto_4
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_4
.end method

.method grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    .locals 8
    .param p1, "needed"    # Lcom/android/server/uri/NeededUriGrants;
    .param p2, "owner"    # Lcom/android/server/uri/UriPermissionOwner;

    .line 754
    if-nez p1, :cond_0

    .line 755
    return-void

    .line 757
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/uri/NeededUriGrants;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 758
    invoke-virtual {p1, v0}, Lcom/android/server/uri/NeededUriGrants;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/GrantUri;

    .line 759
    .local v1, "grantUri":Lcom/android/server/uri/GrantUri;
    iget v3, p1, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    iget-object v4, p1, Lcom/android/server/uri/NeededUriGrants;->targetPkg:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/uri/NeededUriGrants;->flags:I

    move-object v2, p0

    move-object v5, v1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V

    .line 757
    .end local v1    # "grantUri":Lcom/android/server/uri/GrantUri;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 762
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method onActivityManagerInternalAdded()V
    .locals 1

    .line 158
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 159
    return-void
.end method

.method readGrantedUriPermissions()V
    .locals 23

    .line 639
    move-object/from16 v1, p0

    const-string v2, "Failed reading Uri grants"

    const-string v3, "UriGrantsManagerService"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 641
    .local v4, "now":J
    const/4 v6, 0x0

    .line 643
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v0, v1, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    move-object v6, v0

    .line 644
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v7, v0

    .line 645
    .local v7, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 648
    :goto_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v8, v0

    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v0, v9, :cond_5

    .line 649
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 650
    .local v9, "tag":Ljava/lang/String;
    const/4 v0, 0x2

    if-ne v8, v0, :cond_4

    .line 651
    const-string/jumbo v0, "uri-grant"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 654
    const-string/jumbo v0, "userHandle"

    const/16 v10, -0x2710

    invoke-static {v7, v0, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    move v11, v0

    .line 656
    .local v11, "userHandle":I
    if-eq v11, v10, :cond_0

    .line 658
    move v0, v11

    .line 659
    .local v0, "sourceUserId":I
    move v10, v11

    move v12, v10

    move v10, v0

    .local v10, "targetUserId":I
    goto :goto_1

    .line 661
    .end local v0    # "sourceUserId":I
    .end local v10    # "targetUserId":I
    :cond_0
    const-string/jumbo v0, "sourceUserId"

    invoke-static {v7, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 662
    .restart local v0    # "sourceUserId":I
    const-string/jumbo v10, "targetUserId"

    invoke-static {v7, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v10

    move v12, v10

    move v10, v0

    .line 664
    .end local v0    # "sourceUserId":I
    .local v10, "sourceUserId":I
    .local v12, "targetUserId":I
    :goto_1
    const-string/jumbo v0, "sourcePkg"

    const/4 v13, 0x0

    invoke-interface {v7, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 665
    .local v14, "sourcePkg":Ljava/lang/String;
    const-string/jumbo v0, "targetPkg"

    invoke-interface {v7, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 666
    .local v15, "targetPkg":Ljava/lang/String;
    const-string/jumbo v0, "uri"

    invoke-interface {v7, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v13, v0

    .line 667
    .local v13, "uri":Landroid/net/Uri;
    const-string/jumbo v0, "prefix"

    invoke-static {v7, v0}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    move/from16 v16, v0

    .line 668
    .local v16, "prefix":Z
    const-string/jumbo v0, "modeFlags"

    invoke-static {v7, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    .line 669
    .local v17, "modeFlags":I
    const-string v0, "createdTime"

    invoke-static {v7, v0, v4, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v18

    move-wide/from16 v20, v18

    .line 674
    .local v20, "createdTime":J
    invoke-virtual {v13}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide/from16 v18, v4

    .end local v4    # "now":J
    .local v18, "now":J
    const/high16 v4, 0xc0000

    :try_start_1
    invoke-direct {v1, v0, v10, v4}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    move-object v4, v0

    .line 676
    .local v4, "pi":Landroid/content/pm/ProviderInfo;
    if-eqz v4, :cond_2

    iget-object v0, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_2

    .line 677
    const/4 v5, -0x1

    .line 679
    .local v5, "targetUid":I
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v22, v5

    .end local v5    # "targetUid":I
    .local v22, "targetUid":I
    const/16 v5, 0x2000

    :try_start_3
    invoke-interface {v0, v15, v5, v12}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v5, v0

    .line 682
    .end local v22    # "targetUid":I
    .restart local v5    # "targetUid":I
    goto :goto_3

    .line 681
    .end local v5    # "targetUid":I
    .restart local v22    # "targetUid":I
    :catch_0
    move-exception v0

    goto :goto_2

    .end local v22    # "targetUid":I
    .restart local v5    # "targetUid":I
    :catch_1
    move-exception v0

    move/from16 v22, v5

    .end local v5    # "targetUid":I
    .restart local v22    # "targetUid":I
    :goto_2
    move/from16 v5, v22

    .line 683
    .end local v22    # "targetUid":I
    .restart local v5    # "targetUid":I
    :goto_3
    const/4 v0, -0x1

    if-eq v5, v0, :cond_1

    .line 684
    :try_start_4
    new-instance v0, Lcom/android/server/uri/GrantUri;

    move-object/from16 v22, v7

    move/from16 v7, v16

    .end local v16    # "prefix":Z
    .local v7, "prefix":Z
    .local v22, "in":Lorg/xmlpull/v1/XmlPullParser;
    invoke-direct {v0, v10, v13, v7}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;Z)V

    invoke-direct {v1, v14, v15, v5, v0}, Lcom/android/server/uri/UriGrantsManagerService;->findOrCreateUriPermission(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v0

    .line 687
    .local v0, "perm":Lcom/android/server/uri/UriPermission;
    move/from16 v16, v8

    move/from16 v1, v17

    move/from16 v17, v7

    move-wide/from16 v7, v20

    .end local v8    # "type":I
    .end local v20    # "createdTime":J
    .local v1, "modeFlags":I
    .local v7, "createdTime":J
    .local v16, "type":I
    .local v17, "prefix":Z
    invoke-virtual {v0, v1, v7, v8}, Lcom/android/server/uri/UriPermission;->initPersistedModes(IJ)V

    goto :goto_4

    .line 683
    .end local v0    # "perm":Lcom/android/server/uri/UriPermission;
    .end local v1    # "modeFlags":I
    .end local v22    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .local v7, "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    .local v16, "prefix":Z
    .local v17, "modeFlags":I
    .restart local v20    # "createdTime":J
    :cond_1
    move-object/from16 v22, v7

    move/from16 v1, v17

    move/from16 v17, v16

    move/from16 v16, v8

    move-wide/from16 v7, v20

    .line 689
    .end local v5    # "targetUid":I
    .end local v8    # "type":I
    .end local v20    # "createdTime":J
    .restart local v1    # "modeFlags":I
    .local v7, "createdTime":J
    .local v16, "type":I
    .local v17, "prefix":Z
    .restart local v22    # "in":Lorg/xmlpull/v1/XmlPullParser;
    :goto_4
    goto :goto_5

    .line 676
    .end local v1    # "modeFlags":I
    .end local v22    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .local v7, "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    .local v16, "prefix":Z
    .local v17, "modeFlags":I
    .restart local v20    # "createdTime":J
    :cond_2
    move-object/from16 v22, v7

    move/from16 v1, v17

    move/from16 v17, v16

    move/from16 v16, v8

    move-wide/from16 v7, v20

    .line 690
    .end local v8    # "type":I
    .end local v20    # "createdTime":J
    .restart local v1    # "modeFlags":I
    .local v7, "createdTime":J
    .local v16, "type":I
    .local v17, "prefix":Z
    .restart local v22    # "in":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Persisted grant for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " had source "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " but instead found "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    .line 700
    .end local v1    # "modeFlags":I
    .end local v4    # "pi":Landroid/content/pm/ProviderInfo;
    .end local v7    # "createdTime":J
    .end local v9    # "tag":Ljava/lang/String;
    .end local v10    # "sourceUserId":I
    .end local v11    # "userHandle":I
    .end local v12    # "targetUserId":I
    .end local v13    # "uri":Landroid/net/Uri;
    .end local v14    # "sourcePkg":Ljava/lang/String;
    .end local v15    # "targetPkg":Ljava/lang/String;
    .end local v16    # "type":I
    .end local v17    # "prefix":Z
    .end local v22    # "in":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v0

    goto :goto_6

    .line 698
    :catch_3
    move-exception v0

    goto :goto_7

    .line 696
    :catch_4
    move-exception v0

    goto :goto_9

    .line 651
    .end local v18    # "now":J
    .local v4, "now":J
    .local v7, "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    .restart local v9    # "tag":Ljava/lang/String;
    :cond_3
    move-wide/from16 v18, v4

    move-object/from16 v22, v7

    move/from16 v16, v8

    .end local v4    # "now":J
    .end local v7    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .restart local v16    # "type":I
    .restart local v18    # "now":J
    .restart local v22    # "in":Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_5

    .line 650
    .end local v16    # "type":I
    .end local v18    # "now":J
    .end local v22    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "now":J
    .restart local v7    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :cond_4
    move-wide/from16 v18, v4

    move-object/from16 v22, v7

    move/from16 v16, v8

    .line 695
    .end local v4    # "now":J
    .end local v7    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .end local v9    # "tag":Ljava/lang/String;
    .restart local v16    # "type":I
    .restart local v18    # "now":J
    .restart local v22    # "in":Lorg/xmlpull/v1/XmlPullParser;
    :goto_5
    move-object/from16 v1, p0

    move-wide/from16 v4, v18

    move-object/from16 v7, v22

    goto/16 :goto_0

    .line 648
    .end local v16    # "type":I
    .end local v18    # "now":J
    .end local v22    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "now":J
    .restart local v7    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :cond_5
    move-wide/from16 v18, v4

    move-object/from16 v22, v7

    move/from16 v16, v8

    .end local v4    # "now":J
    .end local v7    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .restart local v18    # "now":J
    goto :goto_9

    .line 703
    .end local v18    # "now":J
    .restart local v4    # "now":J
    :catchall_0
    move-exception v0

    move-wide/from16 v18, v4

    .end local v4    # "now":J
    .restart local v18    # "now":J
    goto :goto_8

    .line 700
    .end local v18    # "now":J
    .restart local v4    # "now":J
    :catch_5
    move-exception v0

    move-wide/from16 v18, v4

    .line 701
    .end local v4    # "now":J
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v18    # "now":J
    :goto_6
    :try_start_5
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 703
    nop

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_a

    .line 698
    .end local v18    # "now":J
    .restart local v4    # "now":J
    :catch_6
    move-exception v0

    move-wide/from16 v18, v4

    .line 699
    .end local v4    # "now":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v18    # "now":J
    :goto_7
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 703
    nop

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_a

    :catchall_1
    move-exception v0

    :goto_8
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 696
    .end local v18    # "now":J
    .restart local v4    # "now":J
    :catch_7
    move-exception v0

    move-wide/from16 v18, v4

    .line 703
    .end local v4    # "now":J
    .restart local v18    # "now":J
    :goto_9
    nop

    :goto_a
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 704
    nop

    .line 705
    return-void
.end method

.method public releasePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "toPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 368
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 369
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"

    const-string/jumbo v3, "releasePersistableUriPermission"

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->getPmInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p3, v0, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    .local v1, "uid":I
    goto :goto_0

    .line 373
    .end local v1    # "uid":I
    :cond_0
    const-string/jumbo v1, "releasePersistableUriPermission"

    invoke-direct {p0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 374
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 377
    .restart local v1    # "uid":I
    :goto_0
    const/4 v2, 0x3

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 380
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 381
    const/4 v3, 0x0

    .line 383
    .local v3, "persistChanged":Z
    :try_start_0
    new-instance v4, Lcom/android/server/uri/GrantUri;

    invoke-direct {v4, p4, p1, v0}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;Z)V

    invoke-direct {p0, v1, v4}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v0

    .line 385
    .local v0, "exactPerm":Lcom/android/server/uri/UriPermission;
    new-instance v4, Lcom/android/server/uri/GrantUri;

    const/4 v5, 0x1

    invoke-direct {v4, p4, p1, v5}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;Z)V

    invoke-direct {p0, v1, v4}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v4

    .line 387
    .local v4, "prefixPerm":Lcom/android/server/uri/UriPermission;
    if-nez v0, :cond_2

    if-nez v4, :cond_2

    if-eqz p3, :cond_1

    goto :goto_1

    .line 388
    :cond_1
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No permission grants found for UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " and Uri "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "uid":I
    .end local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "modeFlags":I
    .end local p3    # "toPackage":Ljava/lang/String;
    .end local p4    # "userId":I
    throw v5

    .line 392
    .restart local v1    # "uid":I
    .restart local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "modeFlags":I
    .restart local p3    # "toPackage":Ljava/lang/String;
    .restart local p4    # "userId":I
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 393
    invoke-virtual {v0, p2}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    move-result v5

    or-int/2addr v3, v5

    .line 394
    invoke-direct {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V

    .line 396
    :cond_3
    if-eqz v4, :cond_4

    .line 397
    invoke-virtual {v4, p2}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    move-result v5

    or-int/2addr v3, v5

    .line 398
    invoke-direct {p0, v4}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V

    .line 401
    :cond_4
    if-eqz v3, :cond_5

    .line 402
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 404
    .end local v0    # "exactPerm":Lcom/android/server/uri/UriPermission;
    .end local v3    # "persistChanged":Z
    .end local v4    # "prefixPerm":Lcom/android/server/uri/UriPermission;
    :cond_5
    monitor-exit v2

    .line 405
    return-void

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeUriPermissionsForPackage(Ljava/lang/String;IZZ)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "persistable"    # Z
    .param p4, "targetOnly"    # Z

    .line 421
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 422
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must narrow by either package or user"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 427
    .local v1, "persistChanged":Z
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 428
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_a

    .line 429
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 430
    .local v4, "targetUid":I
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 433
    .local v5, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    const/4 v6, 0x1

    if-eq p2, v0, :cond_2

    .line 434
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne p2, v7, :cond_9

    .line 435
    :cond_2
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/uri/UriPermission;>;"
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 436
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission;

    .line 439
    .local v8, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_4

    if-nez p4, :cond_3

    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    .line 440
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 444
    :cond_4
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v9, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    const-string v10, "downloads"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-nez p3, :cond_5

    .line 445
    goto :goto_2

    .line 447
    :cond_5
    if-eqz p3, :cond_6

    .line 448
    move v9, v0

    goto :goto_3

    :cond_6
    const/16 v9, -0x41

    .line 447
    :goto_3
    invoke-virtual {v8, v9, v6}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v9

    or-int/2addr v1, v9

    .line 452
    iget v9, v8, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v9, :cond_7

    .line 453
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 456
    .end local v8    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_7
    goto :goto_2

    .line 458
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/uri/UriPermission;>;"
    :cond_8
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 459
    iget-object v7, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 460
    add-int/lit8 v2, v2, -0x1

    .line 461
    add-int/lit8 v3, v3, -0x1

    .line 428
    .end local v4    # "targetUid":I
    .end local v5    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_9
    add-int/2addr v3, v6

    goto :goto_1

    .line 466
    .end local v3    # "i":I
    :cond_a
    if-eqz v1, :cond_b

    .line 467
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 469
    :cond_b
    return-void
.end method

.method revokeUriPermission(Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V
    .locals 16
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I

    .line 789
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    .line 790
    .local v10, "pm":Landroid/content/pm/IPackageManager;
    iget-object v0, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v11

    .line 791
    .local v11, "authority":Ljava/lang/String;
    iget v0, v9, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v1, 0xc0000

    invoke-direct {v6, v11, v0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v12

    .line 793
    .local v12, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v12, :cond_0

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No content provider found for permission revoke: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 794
    const-string v1, "UriGrantsManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    return-void

    .line 800
    :cond_0
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v12

    move-object/from16 v3, p3

    move/from16 v4, p2

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissions(Landroid/content/pm/IPackageManager;Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_6

    .line 803
    iget-object v0, v6, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 804
    .local v0, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-eqz v0, :cond_5

    .line 805
    const/4 v3, 0x0

    .line 806
    .local v3, "persistChanged":Z
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 807
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/UriPermission;

    .line 808
    .local v2, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz v7, :cond_1

    iget-object v5, v2, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 809
    goto :goto_1

    .line 811
    :cond_1
    iget-object v5, v2, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget v5, v5, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    iget v13, v9, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-ne v5, v13, :cond_2

    iget-object v5, v2, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v5, v5, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v13, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 812
    invoke-virtual {v5, v13}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 815
    or-int/lit8 v5, p4, 0x40

    invoke-virtual {v2, v5, v1}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v5

    or-int/2addr v3, v5

    .line 817
    iget v5, v2, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v5, :cond_2

    .line 818
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 806
    .end local v2    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 822
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 823
    iget-object v1, v6, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 825
    :cond_4
    if-eqz v3, :cond_5

    .line 826
    invoke-direct/range {p0 .. p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 829
    .end local v3    # "persistChanged":Z
    :cond_5
    return-void

    .line 832
    .end local v0    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_6
    const/4 v0, 0x0

    .line 835
    .local v0, "persistChanged":Z
    iget-object v3, v6, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_c

    .line 836
    iget-object v4, v6, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 837
    .local v4, "targetUid":I
    iget-object v5, v6, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 839
    .local v5, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v13

    sub-int/2addr v13, v2

    .local v13, "j":I
    :goto_3
    if-ltz v13, :cond_a

    .line 840
    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/uri/UriPermission;

    .line 841
    .local v14, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz v7, :cond_7

    iget-object v15, v14, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 842
    goto :goto_5

    .line 844
    :cond_7
    iget-object v15, v14, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget v15, v15, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    iget v1, v9, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-ne v15, v1, :cond_9

    iget-object v1, v14, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v1, v1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v15, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 845
    invoke-virtual {v1, v15}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 848
    or-int/lit8 v1, p4, 0x40

    if-nez v7, :cond_8

    move v15, v2

    goto :goto_4

    :cond_8
    const/4 v15, 0x0

    :goto_4
    invoke-virtual {v14, v1, v15}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 851
    iget v1, v14, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v1, :cond_9

    .line 852
    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 839
    .end local v14    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_9
    :goto_5
    add-int/lit8 v13, v13, -0x1

    const/4 v1, 0x0

    goto :goto_3

    .line 857
    .end local v13    # "j":I
    :cond_a
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 858
    iget-object v1, v6, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 835
    .end local v4    # "targetUid":I
    .end local v5    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_b
    add-int/lit8 v3, v3, -0x1

    const/4 v1, 0x0

    goto :goto_2

    .line 862
    .end local v3    # "i":I
    :cond_c
    if-eqz v0, :cond_d

    .line 863
    invoke-direct/range {p0 .. p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 865
    :cond_d
    return-void
.end method

.method public takePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "toPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 303
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 304
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"

    const-string/jumbo v3, "takePersistableUriPermission"

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->getPmInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p3, v0, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    .local v1, "uid":I
    goto :goto_0

    .line 308
    .end local v1    # "uid":I
    :cond_0
    const-string/jumbo v1, "takePersistableUriPermission"

    invoke-direct {p0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 309
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 312
    .restart local v1    # "uid":I
    :goto_0
    const/4 v2, 0x3

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 315
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 316
    const/4 v3, 0x0

    .line 317
    .local v3, "persistChanged":Z
    :try_start_0
    new-instance v4, Lcom/android/server/uri/GrantUri;

    invoke-direct {v4, p4, p1, v0}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;Z)V

    .line 319
    .local v4, "grantUri":Lcom/android/server/uri/GrantUri;
    invoke-direct {p0, v1, v4}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v5

    .line 320
    .local v5, "exactPerm":Lcom/android/server/uri/UriPermission;
    new-instance v6, Lcom/android/server/uri/GrantUri;

    const/4 v7, 0x1

    invoke-direct {v6, p4, p1, v7}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;Z)V

    invoke-direct {p0, v1, v6}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v6

    .line 323
    .local v6, "prefixPerm":Lcom/android/server/uri/UriPermission;
    if-eqz v5, :cond_1

    iget v8, v5, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v8, p2

    if-ne v8, p2, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    move v8, v0

    .line 325
    .local v8, "exactValid":Z
    :goto_1
    if-eqz v6, :cond_2

    iget v9, v6, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v9, p2

    if-ne v9, p2, :cond_2

    move v0, v7

    .line 328
    .local v0, "prefixValid":Z
    :cond_2
    if-nez v8, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    .line 329
    :cond_3
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No persistable permission grants found for UID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " and Uri "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v4}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "uid":I
    .end local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "modeFlags":I
    .end local p3    # "toPackage":Ljava/lang/String;
    .end local p4    # "userId":I
    throw v7

    .line 333
    .restart local v1    # "uid":I
    .restart local p0    # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "modeFlags":I
    .restart local p3    # "toPackage":Ljava/lang/String;
    .restart local p4    # "userId":I
    :cond_4
    :goto_2
    if-eqz v8, :cond_5

    .line 334
    invoke-virtual {v5, p2}, Lcom/android/server/uri/UriPermission;->takePersistableModes(I)Z

    move-result v7

    or-int/2addr v3, v7

    .line 336
    :cond_5
    if-eqz v0, :cond_6

    .line 337
    invoke-virtual {v6, p2}, Lcom/android/server/uri/UriPermission;->takePersistableModes(I)Z

    move-result v7

    or-int/2addr v3, v7

    .line 340
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->maybePrunePersistedUriGrants(I)Z

    move-result v7

    or-int/2addr v3, v7

    .line 342
    if-eqz v3, :cond_7

    .line 343
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 345
    .end local v0    # "prefixValid":Z
    .end local v3    # "persistChanged":Z
    .end local v4    # "grantUri":Lcom/android/server/uri/GrantUri;
    .end local v5    # "exactPerm":Lcom/android/server/uri/UriPermission;
    .end local v6    # "prefixPerm":Lcom/android/server/uri/UriPermission;
    .end local v8    # "exactValid":Z
    :cond_7
    monitor-exit v2

    .line 346
    return-void

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
