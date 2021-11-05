.class public Lcom/android/server/pm/permission/SensitivePermGrantPolicyManager;
.super Ljava/lang/Object;
.source "SensitivePermGrantPolicyManager.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "SensitivePermGrantPolicyManager"

.field private static sOpSensitivePermGrantPolicyManager:Lcom/android/server/pm/permission/IOpSensitivePermGrantPolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/pm/permission/SensitivePermGrantPolicyManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static grantSensitivePermissionPolicy(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "perm"    # Ljava/lang/String;
    .param p2, "allowed"    # Z

    .line 19
    sget-boolean v0, Lcom/android/server/pm/permission/SensitivePermGrantPolicyManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 20
    const-string v0, "SensitivePermGrantPolicyManager"

    const-string v1, "call SensitivePermGrantPolicyManager.grantPermissionOppoPolicy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    invoke-static {}, Lcom/android/server/pm/permission/SensitivePermGrantPolicyManager;->makeSureInstanceInitialized()V

    .line 23
    sget-object v0, Lcom/android/server/pm/permission/SensitivePermGrantPolicyManager;->sOpSensitivePermGrantPolicyManager:Lcom/android/server/pm/permission/IOpSensitivePermGrantPolicyManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/pm/permission/IOpSensitivePermGrantPolicyManager;->grantSensitivePermissionPolicy(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static makeSureInstanceInitialized()V
    .locals 1

    .line 28
    sget-object v0, Lcom/android/server/pm/permission/SensitivePermGrantPolicyManager;->sOpSensitivePermGrantPolicyManager:Lcom/android/server/pm/permission/IOpSensitivePermGrantPolicyManager;

    if-nez v0, :cond_0

    .line 29
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_sensitive_perm_grant_policy:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 31
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/IOpSensitivePermGrantPolicyManager;

    sput-object v0, Lcom/android/server/pm/permission/SensitivePermGrantPolicyManager;->sOpSensitivePermGrantPolicyManager:Lcom/android/server/pm/permission/IOpSensitivePermGrantPolicyManager;

    .line 33
    :cond_0
    return-void
.end method
