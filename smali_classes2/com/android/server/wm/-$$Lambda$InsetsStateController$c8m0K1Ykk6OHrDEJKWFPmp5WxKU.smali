.class public final synthetic Lcom/android/server/wm/-$$Lambda$InsetsStateController$c8m0K1Ykk6OHrDEJKWFPmp5WxKU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/InsetsStateController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/InsetsStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$InsetsStateController$c8m0K1Ykk6OHrDEJKWFPmp5WxKU;->f$0:Lcom/android/server/wm/InsetsStateController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$InsetsStateController$c8m0K1Ykk6OHrDEJKWFPmp5WxKU;->f$0:Lcom/android/server/wm/InsetsStateController;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InsetsStateController;->lambda$getSourceProvider$2$InsetsStateController(Ljava/lang/Integer;)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object p1

    return-object p1
.end method
