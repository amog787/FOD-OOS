.class public final Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "UriGrantsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/uri/UriGrantsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/uri/UriGrantsManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 166
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/uri/UriGrantsManagerService;-><init>(Landroid/content/Context;Lcom/android/server/uri/UriGrantsManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;->mService:Lcom/android/server/uri/UriGrantsManagerService;

    .line 167
    return-void
.end method


# virtual methods
.method public getService()Lcom/android/server/uri/UriGrantsManagerService;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;->mService:Lcom/android/server/uri/UriGrantsManagerService;

    return-object v0
.end method

.method public onStart()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;->mService:Lcom/android/server/uri/UriGrantsManagerService;

    const-string/jumbo v1, "uri_grants"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 172
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;->mService:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$100(Lcom/android/server/uri/UriGrantsManagerService;)V

    .line 173
    return-void
.end method
