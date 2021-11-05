.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerService$tQLp-WG3sRGFq2iHAmuL0rNXLKY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ZZLjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$tQLp-WG3sRGFq2iHAmuL0rNXLKY;->f$0:Z

    iput-boolean p2, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$tQLp-WG3sRGFq2iHAmuL0rNXLKY;->f$1:Z

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$tQLp-WG3sRGFq2iHAmuL0rNXLKY;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$tQLp-WG3sRGFq2iHAmuL0rNXLKY;->f$0:Z

    iget-boolean v1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$tQLp-WG3sRGFq2iHAmuL0rNXLKY;->f$1:Z

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$tQLp-WG3sRGFq2iHAmuL0rNXLKY;->f$2:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/wm/WindowManagerService;->lambda$dumpWindows$11(ZZLjava/util/ArrayList;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
