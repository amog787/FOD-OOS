.class public final synthetic Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$vOML0hOJnB0nfVyd-_gAv-q-pdU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/RemoteAnimationController;

.field private final synthetic f$1:[Landroid/view/RemoteAnimationTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RemoteAnimationController;[Landroid/view/RemoteAnimationTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$vOML0hOJnB0nfVyd-_gAv-q-pdU;->f$0:Lcom/android/server/wm/RemoteAnimationController;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$vOML0hOJnB0nfVyd-_gAv-q-pdU;->f$1:[Landroid/view/RemoteAnimationTarget;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$vOML0hOJnB0nfVyd-_gAv-q-pdU;->f$0:Lcom/android/server/wm/RemoteAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$vOML0hOJnB0nfVyd-_gAv-q-pdU;->f$1:[Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RemoteAnimationController;->lambda$goodToGoWhenStopFreezing$2$RemoteAnimationController([Landroid/view/RemoteAnimationTarget;)V

    return-void
.end method
