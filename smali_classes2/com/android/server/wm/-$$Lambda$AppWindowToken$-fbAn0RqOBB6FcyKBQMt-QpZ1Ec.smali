.class public final synthetic Lcom/android/server/wm/-$$Lambda$AppWindowToken$-fbAn0RqOBB6FcyKBQMt-QpZ1Ec;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/AppWindowToken;

.field private final synthetic f$1:[F

.field private final synthetic f$2:[F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppWindowToken;[F[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$-fbAn0RqOBB6FcyKBQMt-QpZ1Ec;->f$0:Lcom/android/server/wm/AppWindowToken;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$-fbAn0RqOBB6FcyKBQMt-QpZ1Ec;->f$1:[F

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$-fbAn0RqOBB6FcyKBQMt-QpZ1Ec;->f$2:[F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$-fbAn0RqOBB6FcyKBQMt-QpZ1Ec;->f$0:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$-fbAn0RqOBB6FcyKBQMt-QpZ1Ec;->f$1:[F

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$-fbAn0RqOBB6FcyKBQMt-QpZ1Ec;->f$2:[F

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AppWindowToken;->lambda$new$0$AppWindowToken([F[F)V

    return-void
.end method
