.class public final synthetic Lcom/android/server/wm/-$$Lambda$RootWindowContainer$4_P7sOzhQfja_16d53dY683U8rc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$4_P7sOzhQfja_16d53dY683U8rc;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$4_P7sOzhQfja_16d53dY683U8rc;->f$0:Ljava/io/PrintWriter;

    invoke-static {v0}, Lcom/android/server/wm/RootWindowContainer;->lambda$dumpActivities$13(Ljava/io/PrintWriter;)V

    return-void
.end method
