.class public final synthetic Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$Fcg_31mLLd_1djDPJSdIyLHQXJY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/blob/BlobStoreManagerService;

.field public final synthetic f$1:Lcom/android/server/blob/BlobStoreSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$Fcg_31mLLd_1djDPJSdIyLHQXJY;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    iput-object p2, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$Fcg_31mLLd_1djDPJSdIyLHQXJY;->f$1:Lcom/android/server/blob/BlobStoreSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$Fcg_31mLLd_1djDPJSdIyLHQXJY;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    iget-object v1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$Fcg_31mLLd_1djDPJSdIyLHQXJY;->f$1:Lcom/android/server/blob/BlobStoreSession;

    invoke-virtual {v0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$onStateChangedInternal$10$BlobStoreManagerService(Lcom/android/server/blob/BlobStoreSession;)V

    return-void
.end method
