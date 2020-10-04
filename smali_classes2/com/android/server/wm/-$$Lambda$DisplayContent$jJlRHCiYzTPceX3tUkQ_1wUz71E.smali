.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$jJlRHCiYzTPceX3tUkQ_1wUz71E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field private final synthetic f$1:Lcom/android/server/wm/WindowState;

.field private final synthetic f$2:Lcom/android/server/policy/WindowManagerPolicy$WindowState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$jJlRHCiYzTPceX3tUkQ_1wUz71E;->f$0:Lcom/android/server/wm/DisplayContent;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$jJlRHCiYzTPceX3tUkQ_1wUz71E;->f$1:Lcom/android/server/wm/WindowState;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$jJlRHCiYzTPceX3tUkQ_1wUz71E;->f$2:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$jJlRHCiYzTPceX3tUkQ_1wUz71E;->f$0:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$jJlRHCiYzTPceX3tUkQ_1wUz71E;->f$1:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$jJlRHCiYzTPceX3tUkQ_1wUz71E;->f$2:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/DisplayContent;->lambda$getNeedsMenu$17$DisplayContent(Lcom/android/server/wm/WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
