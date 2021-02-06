.class public abstract Lcom/android/server/pm/SettingBase;
.super Ljava/lang/Object;
.source "SettingBase.java"


# instance fields
.field protected final mPermissionsState:Lcom/android/server/pm/permission/PermissionsState;

.field pkgFlags:I

.field pkgPrivateFlags:I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .param p1, "pkgFlags"    # I
    .param p2, "pkgPrivateFlags"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/pm/SettingBase;->setFlags(I)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)V

    .line 34
    new-instance v0, Lcom/android/server/pm/permission/PermissionsState;

    invoke-direct {v0}, Lcom/android/server/pm/permission/PermissionsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mPermissionsState:Lcom/android/server/pm/permission/PermissionsState;

    .line 35
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/SettingBase;)V
    .locals 1
    .param p1, "orig"    # Lcom/android/server/pm/SettingBase;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/android/server/pm/permission/PermissionsState;

    invoke-direct {v0}, Lcom/android/server/pm/permission/PermissionsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mPermissionsState:Lcom/android/server/pm/permission/PermissionsState;

    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingBase;->doCopy(Lcom/android/server/pm/SettingBase;)V

    .line 40
    return-void
.end method

.method private doCopy(Lcom/android/server/pm/SettingBase;)V
    .locals 2
    .param p1, "orig"    # Lcom/android/server/pm/SettingBase;

    .line 47
    iget v0, p1, Lcom/android/server/pm/SettingBase;->pkgFlags:I

    iput v0, p0, Lcom/android/server/pm/SettingBase;->pkgFlags:I

    .line 48
    iget v0, p1, Lcom/android/server/pm/SettingBase;->pkgPrivateFlags:I

    iput v0, p0, Lcom/android/server/pm/SettingBase;->pkgPrivateFlags:I

    .line 49
    iget-object v0, p0, Lcom/android/server/pm/SettingBase;->mPermissionsState:Lcom/android/server/pm/permission/PermissionsState;

    iget-object v1, p1, Lcom/android/server/pm/SettingBase;->mPermissionsState:Lcom/android/server/pm/permission/PermissionsState;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionsState;->copyFrom(Lcom/android/server/pm/permission/PermissionsState;)V

    .line 50
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/pm/SettingBase;)V
    .locals 0
    .param p1, "orig"    # Lcom/android/server/pm/SettingBase;

    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingBase;->doCopy(Lcom/android/server/pm/SettingBase;)V

    .line 44
    return-void
.end method

.method public getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/server/pm/SettingBase;->mPermissionsState:Lcom/android/server/pm/permission/PermissionsState;

    return-object v0
.end method

.method setFlags(I)V
    .locals 1
    .param p1, "pkgFlags"    # I

    .line 57
    const v0, 0x40001

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/pm/SettingBase;->pkgFlags:I

    .line 60
    return-void
.end method

.method setPrivateFlags(I)V
    .locals 1
    .param p1, "pkgPrivateFlags"    # I

    .line 63
    const v0, 0x402e0208

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/pm/SettingBase;->pkgPrivateFlags:I

    .line 71
    return-void
.end method
