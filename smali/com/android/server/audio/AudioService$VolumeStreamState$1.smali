.class Lcom/android/server/audio/AudioService$VolumeStreamState$1;
.super Landroid/util/SparseIntArray;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService$VolumeStreamState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/audio/AudioService$VolumeStreamState;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "initialCapacity"    # I

    .line 6688
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->this$1:Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-direct {p0, p2}, Landroid/util/SparseIntArray;-><init>(I)V

    return-void
.end method

.method private record(Ljava/lang/String;II)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "key"    # I
    .param p3, "value"    # I

    .line 6702
    const/high16 v0, 0x40000000    # 2.0f

    if-ne p2, v0, :cond_0

    const-string v0, "default"

    goto :goto_0

    .line 6703
    :cond_0
    invoke-static {p2}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 6704
    .local v0, "device":Ljava/lang/String;
    new-instance v1, Landroid/media/MediaMetrics$Item;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio.volume."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->this$1:Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 6705
    invoke-static {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 6707
    invoke-virtual {v1, v2, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    .line 6708
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->MIN_INDEX:Landroid/media/MediaMetrics$Key;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->this$1:Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 6709
    invoke-static {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->MAX_INDEX:Landroid/media/MediaMetrics$Key;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->this$1:Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 6710
    invoke-static {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    .line 6711
    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 6712
    return-void
.end method


# virtual methods
.method public put(II)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "value"    # I

    .line 6691
    invoke-super {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6692
    const-string/jumbo v0, "put"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->record(Ljava/lang/String;II)V

    .line 6693
    return-void
.end method

.method public setValueAt(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 6696
    invoke-super {p0, p1, p2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 6697
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->keyAt(I)I

    move-result v0

    const-string/jumbo v1, "setValueAt"

    invoke-direct {p0, v1, v0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->record(Ljava/lang/String;II)V

    .line 6698
    return-void
.end method
