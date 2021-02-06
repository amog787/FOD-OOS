.class public final synthetic Lcom/android/server/wm/-$$Lambda$AppTransitionController$wKDCdmYJWN9Qk9bjArILV5j7lEY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AppTransitionController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppTransitionController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$AppTransitionController$wKDCdmYJWN9Qk9bjArILV5j7lEY;->f$0:Lcom/android/server/wm/AppTransitionController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$AppTransitionController$wKDCdmYJWN9Qk9bjArILV5j7lEY;->f$0:Lcom/android/server/wm/AppTransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransitionController;->lambda$handleAppTransitionReady$0$AppTransitionController()V

    return-void
.end method
