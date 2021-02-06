.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowContainer$Nezf9LuhT9GSLKWzqEWp7WKs5W8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WindowContainer$Nezf9LuhT9GSLKWzqEWp7WKs5W8;->f$0:Lcom/android/server/wm/WindowContainer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WindowContainer$Nezf9LuhT9GSLKWzqEWp7WKs5W8;->f$0:Lcom/android/server/wm/WindowContainer;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->lambda$waitForAllWindowsDrawn$14$WindowContainer(Lcom/android/server/wm/WindowState;)V

    return-void
.end method
