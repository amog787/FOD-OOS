.class public final synthetic Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$74uuXaM2TqjkzYi0b8LqJdbycxA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RemoteAnimationController;

.field public final synthetic f$1:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic f$2:[Landroid/view/RemoteAnimationTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RemoteAnimationController;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$74uuXaM2TqjkzYi0b8LqJdbycxA;->f$0:Lcom/android/server/wm/RemoteAnimationController;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$74uuXaM2TqjkzYi0b8LqJdbycxA;->f$1:[Landroid/view/RemoteAnimationTarget;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$74uuXaM2TqjkzYi0b8LqJdbycxA;->f$2:[Landroid/view/RemoteAnimationTarget;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$74uuXaM2TqjkzYi0b8LqJdbycxA;->f$0:Lcom/android/server/wm/RemoteAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$74uuXaM2TqjkzYi0b8LqJdbycxA;->f$1:[Landroid/view/RemoteAnimationTarget;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$74uuXaM2TqjkzYi0b8LqJdbycxA;->f$2:[Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/RemoteAnimationController;->lambda$goodToGo$1$RemoteAnimationController([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V

    return-void
.end method
