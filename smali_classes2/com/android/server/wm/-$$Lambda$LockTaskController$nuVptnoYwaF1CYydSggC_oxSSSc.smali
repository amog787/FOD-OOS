.class public final synthetic Lcom/android/server/wm/-$$Lambda$LockTaskController$nuVptnoYwaF1CYydSggC_oxSSSc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/LockTaskController;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/LockTaskController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$LockTaskController$nuVptnoYwaF1CYydSggC_oxSSSc;->f$0:Lcom/android/server/wm/LockTaskController;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$LockTaskController$nuVptnoYwaF1CYydSggC_oxSSSc;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$LockTaskController$nuVptnoYwaF1CYydSggC_oxSSSc;->f$0:Lcom/android/server/wm/LockTaskController;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$LockTaskController$nuVptnoYwaF1CYydSggC_oxSSSc;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/LockTaskController;->lambda$updateLockTaskFeatures$2$LockTaskController(I)V

    return-void
.end method
