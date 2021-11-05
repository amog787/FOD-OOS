.class Lcom/android/server/VibratorService$1;
.super Landroid/app/IUidObserver$Stub;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/VibratorService;

    .line 256
    iput-object p1, p0, Lcom/android/server/VibratorService$1;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 267
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "cached"    # Z

    .line 273
    return-void
.end method

.method public onUidGone(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 263
    iget-object v0, p0, Lcom/android/server/VibratorService$1;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 264
    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 270
    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .param p5, "capability"    # I

    .line 259
    iget-object v0, p0, Lcom/android/server/VibratorService$1;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    return-void
.end method
