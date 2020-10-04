.class Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;
.super Ljava/lang/Object;
.source "LaunchParamsPersister.java"

# interfaces
.implements Lcom/android/server/wm/PersisterQueue$WriteQueueItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/LaunchParamsPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CleanUpComponentQueueItem"
.end annotation


# instance fields
.field private final mComponentFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wm/LaunchParamsPersister;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/LaunchParamsPersister;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 393
    .local p2, "componentFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-object p2, p0, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;->mComponentFiles:Ljava/util/List;

    .line 395
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/LaunchParamsPersister;Ljava/util/List;Lcom/android/server/wm/LaunchParamsPersister$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/LaunchParamsPersister;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Lcom/android/server/wm/LaunchParamsPersister$1;

    .line 390
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 4

    .line 399
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;->mComponentFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 400
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LaunchParamsPersister"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 404
    :cond_1
    return-void
.end method
