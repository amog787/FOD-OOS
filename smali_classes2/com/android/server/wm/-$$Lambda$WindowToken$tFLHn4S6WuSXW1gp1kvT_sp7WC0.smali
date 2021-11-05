.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowToken$tFLHn4S6WuSXW1gp1kvT_sp7WC0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowToken;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WindowToken$tFLHn4S6WuSXW1gp1kvT_sp7WC0;->f$0:Lcom/android/server/wm/WindowToken;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WindowToken$tFLHn4S6WuSXW1gp1kvT_sp7WC0;->f$0:Lcom/android/server/wm/WindowToken;

    check-cast p1, Lcom/android/server/wm/WindowState;

    check-cast p2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowToken;->lambda$new$0$WindowToken(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result p1

    return p1
.end method
