.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerService$PR1gW5Tck-nLlfWq9om2tE_fX1o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$PR1gW5Tck-nLlfWq9om2tE_fX1o;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$PR1gW5Tck-nLlfWq9om2tE_fX1o;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Lcom/android/server/wm/WindowContainer;

    check-cast p2, Ljava/lang/Runnable;

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->lambda$dumpWindowsNoHeaderLocked$9(Ljava/io/PrintWriter;Lcom/android/server/wm/WindowContainer;Ljava/lang/Runnable;)V

    return-void
.end method
