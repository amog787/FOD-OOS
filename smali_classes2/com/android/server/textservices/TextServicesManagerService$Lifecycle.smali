.class public final Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textservices/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/textservices/TextServicesManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 272
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 273
    new-instance v0, Lcom/android/server/textservices/TextServicesManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/textservices/TextServicesManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;->mService:Lcom/android/server/textservices/TextServicesManagerService;

    .line 274
    return-void
.end method

.method static synthetic access$800(Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;)Lcom/android/server/textservices/TextServicesManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    .line 268
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;->mService:Lcom/android/server/textservices/TextServicesManagerService;

    return-object v0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 278
    const-class v0, Lcom/android/server/textservices/TextServicesManagerInternal;

    new-instance v1, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle$1;

    invoke-direct {v1, p0}, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle$1;-><init>(Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;->mService:Lcom/android/server/textservices/TextServicesManagerService;

    const-string v1, "textservices"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 287
    return-void
.end method

.method public onStopUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 294
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;->mService:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->onStopUser(I)V

    .line 295
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 304
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;->mService:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->onUnlockUser(I)V

    .line 305
    return-void
.end method
