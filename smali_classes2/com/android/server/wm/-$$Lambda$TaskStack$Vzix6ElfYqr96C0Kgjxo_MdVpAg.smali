.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskStack$Vzix6ElfYqr96C0Kgjxo_MdVpAg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/TaskStack;

.field private final synthetic f$1:Lcom/android/server/wm/DisplayContent;

.field private final synthetic f$2:Landroid/graphics/Rect;

.field private final synthetic f$3:Landroid/graphics/Rect;

.field private final synthetic f$4:I

.field private final synthetic f$5:I

.field private final synthetic f$6:Z

.field private final synthetic f$7:Z

.field private final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$TaskStack$Vzix6ElfYqr96C0Kgjxo_MdVpAg;->f$0:Lcom/android/server/wm/TaskStack;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$TaskStack$Vzix6ElfYqr96C0Kgjxo_MdVpAg;->f$1:Lcom/android/server/wm/DisplayContent;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$TaskStack$Vzix6ElfYqr96C0Kgjxo_MdVpAg;->f$2:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/server/wm/-$$Lambda$TaskStack$Vzix6ElfYqr96C0Kgjxo_MdVpAg;->f$3:Landroid/graphics/Rect;

    iput p5, p0, Lcom/android/server/wm/-$$Lambda$TaskStack$Vzix6ElfYqr96C0Kgjxo_MdVpAg;->f$4:I

    iput p6, p0, Lcom/android/server/wm/-$$Lambda$TaskStack$Vzix6ElfYqr96C0Kgjxo_MdVpAg;->f$5:I

    iput-boolean p7, p0, Lcom/android/server/wm/-$$Lambda$TaskStack$Vzix6ElfYqr96C0Kgjxo_MdVpAg;->f$6:Z

    iput-boolean p8, p0, Lcom/android/server/wm/-$$Lambda$TaskStack$Vzix6ElfYqr96C0Kgjxo_MdVpAg;->f$7:Z

    iput p9, p0, Lcom/android/server/wm/-$$Lambda$TaskStack$Vzix6ElfYqr96C0Kgjxo_MdVpAg;->f$8:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$TaskStack$Vzix6ElfYqr96C0Kgjxo_MdVpAg;->f$0:Lcom/android/server/wm/TaskStack;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$TaskStack$Vzix6ElfYqr96C0Kgjxo_MdVpAg;->f$1:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$TaskStack$Vzix6ElfYqr96C0Kgjxo_MdVpAg;->f$2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/-$$Lambda$TaskStack$Vzix6ElfYqr96C0Kgjxo_MdVpAg;->f$3:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/server/wm/-$$Lambda$TaskStack$Vzix6ElfYqr96C0Kgjxo_MdVpAg;->f$4:I

    iget v5, p0, Lcom/android/server/wm/-$$Lambda$TaskStack$Vzix6ElfYqr96C0Kgjxo_MdVpAg;->f$5:I

    iget-boolean v6, p0, Lcom/android/server/wm/-$$Lambda$TaskStack$Vzix6ElfYqr96C0Kgjxo_MdVpAg;->f$6:Z

    iget-boolean v7, p0, Lcom/android/server/wm/-$$Lambda$TaskStack$Vzix6ElfYqr96C0Kgjxo_MdVpAg;->f$7:Z

    iget v8, p0, Lcom/android/server/wm/-$$Lambda$TaskStack$Vzix6ElfYqr96C0Kgjxo_MdVpAg;->f$8:I

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/TaskStack;->lambda$animateResizePinnedStack$3$TaskStack(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZI)V

    return-void
.end method
