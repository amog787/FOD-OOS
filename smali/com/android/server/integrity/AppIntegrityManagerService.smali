.class public Lcom/android/server/integrity/AppIntegrityManagerService;
.super Lcom/android/server/SystemService;
.source "AppIntegrityManagerService.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p1, p0, Lcom/android/server/integrity/AppIntegrityManagerService;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->create(Landroid/content/Context;)Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/integrity/AppIntegrityManagerService;->mService:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;

    .line 41
    const-string v1, "app_integrity"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/integrity/AppIntegrityManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 42
    return-void
.end method
