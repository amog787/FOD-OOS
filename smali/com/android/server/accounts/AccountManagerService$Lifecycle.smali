.class public Lcom/android/server/accounts/AccountManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 153
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 154
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .line 158
    new-instance v0, Lcom/android/server/accounts/AccountManagerService;

    new-instance v1, Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/accounts/AccountManagerService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountManagerService;-><init>(Lcom/android/server/accounts/AccountManagerService$Injector;)V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Lifecycle;->mService:Lcom/android/server/accounts/AccountManagerService;

    .line 159
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Lifecycle;->mService:Lcom/android/server/accounts/AccountManagerService;

    const-string v1, "account"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accounts/AccountManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 160
    return-void
.end method

.method public onStopUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStopUser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Lifecycle;->mService:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->access$000(Lcom/android/server/accounts/AccountManagerService;I)V

    .line 171
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 164
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Lifecycle;->mService:Lcom/android/server/accounts/AccountManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->onUnlockUser(I)V

    .line 165
    return-void
.end method
