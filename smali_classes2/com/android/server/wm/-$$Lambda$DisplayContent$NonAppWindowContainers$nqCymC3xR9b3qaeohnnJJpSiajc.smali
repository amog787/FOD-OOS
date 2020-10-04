.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$NonAppWindowContainers$nqCymC3xR9b3qaeohnnJJpSiajc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$NonAppWindowContainers$nqCymC3xR9b3qaeohnnJJpSiajc;->f$0:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$NonAppWindowContainers$nqCymC3xR9b3qaeohnnJJpSiajc;->f$0:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    check-cast p1, Lcom/android/server/wm/WindowToken;

    check-cast p2, Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->lambda$new$0$DisplayContent$NonAppWindowContainers(Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowToken;)I

    move-result p1

    return p1
.end method
