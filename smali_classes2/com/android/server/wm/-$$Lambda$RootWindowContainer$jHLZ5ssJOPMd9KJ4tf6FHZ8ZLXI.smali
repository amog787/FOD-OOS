.class public final synthetic Lcom/android/server/wm/-$$Lambda$RootWindowContainer$jHLZ5ssJOPMd9KJ4tf6FHZ8ZLXI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/util/ArraySet;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArraySet;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$jHLZ5ssJOPMd9KJ4tf6FHZ8ZLXI;->f$0:Landroid/util/ArraySet;

    iput-boolean p2, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$jHLZ5ssJOPMd9KJ4tf6FHZ8ZLXI;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$jHLZ5ssJOPMd9KJ4tf6FHZ8ZLXI;->f$0:Landroid/util/ArraySet;

    iget-boolean v1, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$jHLZ5ssJOPMd9KJ4tf6FHZ8ZLXI;->f$1:Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$updateHiddenWhileSuspendedState$5(Landroid/util/ArraySet;ZLcom/android/server/wm/WindowState;)V

    return-void
.end method
