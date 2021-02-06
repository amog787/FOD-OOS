.class Lcom/android/server/media/MediaSessionRecord$3;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 773
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$3;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 776
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$3;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$500(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$3;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$600(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 777
    .local v0, "needUpdate":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$3;->this$0:Lcom/android/server/media/MediaSessionRecord;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/server/media/MediaSessionRecord;->access$502(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 778
    if-eqz v0, :cond_1

    .line 779
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$3;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$700(Lcom/android/server/media/MediaSessionRecord;)V

    .line 781
    :cond_1
    return-void
.end method
