.class public final Lcom/android/server/pm/permission/PermissionsState$PermissionState;
.super Ljava/lang/Object;
.source "PermissionsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PermissionState"
.end annotation


# instance fields
.field private mFlags:I

.field private mGranted:Z

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)V
    .locals 1
    .param p1, "other"    # Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 853
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mName:Ljava/lang/String;

    .line 854
    iget-boolean v0, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mGranted:Z

    iput-boolean v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mGranted:Z

    .line 855
    iget v0, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I

    iput v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I

    .line 856
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mName:Ljava/lang/String;

    .line 850
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 843
    iget-boolean v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mGranted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/pm/permission/PermissionsState$PermissionState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .param p1, "x1"    # Z

    .line 843
    iput-boolean p1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mGranted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 843
    iget v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/pm/permission/PermissionsState$PermissionState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .param p1, "x1"    # I

    .line 843
    iput p1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I

    return p1
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    .line 871
    iget v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .line 859
    iget-boolean v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mGranted:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGranted()Z
    .locals 1

    .line 867
    iget-boolean v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mGranted:Z

    return v0
.end method
