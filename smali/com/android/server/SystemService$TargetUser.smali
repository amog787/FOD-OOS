.class public final Lcom/android/server/SystemService$TargetUser;
.super Ljava/lang/Object;
.source "SystemService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TargetUser"
.end annotation


# instance fields
.field private final mUserInfo:Landroid/content/pm/UserInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/UserInfo;)V
    .locals 0
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/android/server/SystemService$TargetUser;->mUserInfo:Landroid/content/pm/UserInfo;

    .line 141
    return-void
.end method


# virtual methods
.method public getUserHandle()Landroid/os/UserHandle;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/server/SystemService$TargetUser;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getUserIdentifier()I
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/server/SystemService$TargetUser;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    return v0
.end method

.method public getUserInfo()Landroid/content/pm/UserInfo;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/server/SystemService$TargetUser;->mUserInfo:Landroid/content/pm/UserInfo;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 173
    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
