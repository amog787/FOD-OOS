.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$-lwLvC_wAU5sgJoEjpK20Cc7yDo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$-lwLvC_wAU5sgJoEjpK20Cc7yDo;->f$0:Lcom/android/server/wm/DisplayContent;

    iput-boolean p2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$-lwLvC_wAU5sgJoEjpK20Cc7yDo;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$-lwLvC_wAU5sgJoEjpK20Cc7yDo;->f$0:Lcom/android/server/wm/DisplayContent;

    iget-boolean v1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$-lwLvC_wAU5sgJoEjpK20Cc7yDo;->f$1:Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/DisplayContent;->lambda$applyRotation$10$DisplayContent(ZLcom/android/server/wm/WindowState;)V

    return-void
.end method
