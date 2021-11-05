.class public Lcom/android/server/location/LocationManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LocationManagerService$Lifecycle$SystemUserInfoHelper;
    }
.end annotation


# instance fields
.field private final mService:Lcom/android/server/location/LocationManagerService;

.field private final mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 159
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 160
    new-instance v0, Lcom/android/server/location/LocationManagerService$Lifecycle$SystemUserInfoHelper;

    invoke-direct {v0, p1}, Lcom/android/server/location/LocationManagerService$Lifecycle$SystemUserInfoHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    .line 161
    new-instance v0, Lcom/android/server/location/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/location/LocationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/location/UserInfoHelper;Lcom/android/server/location/LocationManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mService:Lcom/android/server/location/LocationManagerService;

    .line 162
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 177
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$200(Lcom/android/server/location/LocationManagerService;)V

    goto :goto_0

    .line 180
    :cond_0
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$300(Lcom/android/server/location/LocationManagerService;)V

    .line 185
    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 167
    invoke-static {}, Landroid/location/LocationManager;->invalidateLocalLocationEnabledCaches()V

    .line 169
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mService:Lcom/android/server/location/LocationManagerService;

    const-string/jumbo v1, "location"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/LocationManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 171
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->access$100(Lcom/android/server/location/LocationManagerService;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 172
    invoke-virtual {v0}, Landroid/location/LocationManager;->disableLocalLocationEnabledCaches()V

    .line 173
    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 189
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/UserInfoHelper;->dispatchOnUserStarted(I)V

    .line 190
    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 200
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/UserInfoHelper;->dispatchOnUserStopped(I)V

    .line 201
    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 3
    .param p1, "from"    # Lcom/android/server/SystemService$TargetUser;
    .param p2, "to"    # Lcom/android/server/SystemService$TargetUser;

    .line 194
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    .line 195
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v2

    .line 194
    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/UserInfoHelper;->dispatchOnCurrentUserChanged(II)V

    .line 196
    return-void
.end method
