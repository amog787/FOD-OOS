.class public final synthetic Lcom/android/server/wm/-$$Lambda$OpSystemGesturesPointerEventListenerInjector$neC_mfZQiJ4FpMKCb3FZMJ-lO-g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;

.field public final synthetic f$1:D


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$OpSystemGesturesPointerEventListenerInjector$neC_mfZQiJ4FpMKCb3FZMJ-lO-g;->f$0:Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;

    iput-wide p2, p0, Lcom/android/server/wm/-$$Lambda$OpSystemGesturesPointerEventListenerInjector$neC_mfZQiJ4FpMKCb3FZMJ-lO-g;->f$1:D

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$OpSystemGesturesPointerEventListenerInjector$neC_mfZQiJ4FpMKCb3FZMJ-lO-g;->f$0:Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;

    iget-wide v1, p0, Lcom/android/server/wm/-$$Lambda$OpSystemGesturesPointerEventListenerInjector$neC_mfZQiJ4FpMKCb3FZMJ-lO-g;->f$1:D

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/OpSystemGesturesPointerEventListenerInjector;->lambda$saveDistance$0$OpSystemGesturesPointerEventListenerInjector(D)V

    return-void
.end method
