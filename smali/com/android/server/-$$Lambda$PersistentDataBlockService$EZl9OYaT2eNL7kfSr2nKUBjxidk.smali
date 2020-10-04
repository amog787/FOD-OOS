.class public final synthetic Lcom/android/server/-$$Lambda$PersistentDataBlockService$EZl9OYaT2eNL7kfSr2nKUBjxidk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/PersistentDataBlockService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PersistentDataBlockService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$PersistentDataBlockService$EZl9OYaT2eNL7kfSr2nKUBjxidk;->f$0:Lcom/android/server/PersistentDataBlockService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$PersistentDataBlockService$EZl9OYaT2eNL7kfSr2nKUBjxidk;->f$0:Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v0}, Lcom/android/server/PersistentDataBlockService;->lambda$onStart$0$PersistentDataBlockService()V

    return-void
.end method
