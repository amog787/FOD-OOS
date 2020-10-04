.class public final synthetic Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$u5u_W7qW5cMnzk9Qhp_oReST4Dc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:I

.field private final synthetic f$4:I

.field private final synthetic f$5:I

.field private final synthetic f$6:Landroid/graphics/Rect;

.field private final synthetic f$7:Landroid/graphics/Rect;

.field private final synthetic f$8:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$u5u_W7qW5cMnzk9Qhp_oReST4Dc;->f$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput p2, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$u5u_W7qW5cMnzk9Qhp_oReST4Dc;->f$1:I

    iput p3, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$u5u_W7qW5cMnzk9Qhp_oReST4Dc;->f$2:I

    iput p4, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$u5u_W7qW5cMnzk9Qhp_oReST4Dc;->f$3:I

    iput p5, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$u5u_W7qW5cMnzk9Qhp_oReST4Dc;->f$4:I

    iput p6, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$u5u_W7qW5cMnzk9Qhp_oReST4Dc;->f$5:I

    iput-object p7, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$u5u_W7qW5cMnzk9Qhp_oReST4Dc;->f$6:Landroid/graphics/Rect;

    iput-object p8, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$u5u_W7qW5cMnzk9Qhp_oReST4Dc;->f$7:Landroid/graphics/Rect;

    iput-boolean p9, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$u5u_W7qW5cMnzk9Qhp_oReST4Dc;->f$8:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$u5u_W7qW5cMnzk9Qhp_oReST4Dc;->f$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget v1, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$u5u_W7qW5cMnzk9Qhp_oReST4Dc;->f$1:I

    iget v2, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$u5u_W7qW5cMnzk9Qhp_oReST4Dc;->f$2:I

    iget v3, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$u5u_W7qW5cMnzk9Qhp_oReST4Dc;->f$3:I

    iget v4, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$u5u_W7qW5cMnzk9Qhp_oReST4Dc;->f$4:I

    iget v5, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$u5u_W7qW5cMnzk9Qhp_oReST4Dc;->f$5:I

    iget-object v6, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$u5u_W7qW5cMnzk9Qhp_oReST4Dc;->f$6:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$u5u_W7qW5cMnzk9Qhp_oReST4Dc;->f$7:Landroid/graphics/Rect;

    iget-boolean v8, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$u5u_W7qW5cMnzk9Qhp_oReST4Dc;->f$8:Z

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/statusbar/StatusBarManagerService;->lambda$updateUiVisibilityLocked$3$StatusBarManagerService(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return-void
.end method
