.class public final synthetic Lcom/android/server/-$$Lambda$SystemServerInitThreadPool$jLyL3DFmbjsFesU5SGktD3NoWSc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/SystemServerInitThreadPool;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SystemServerInitThreadPool;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$SystemServerInitThreadPool$jLyL3DFmbjsFesU5SGktD3NoWSc;->f$0:Lcom/android/server/SystemServerInitThreadPool;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$SystemServerInitThreadPool$jLyL3DFmbjsFesU5SGktD3NoWSc;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/-$$Lambda$SystemServerInitThreadPool$jLyL3DFmbjsFesU5SGktD3NoWSc;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/-$$Lambda$SystemServerInitThreadPool$jLyL3DFmbjsFesU5SGktD3NoWSc;->f$0:Lcom/android/server/SystemServerInitThreadPool;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$SystemServerInitThreadPool$jLyL3DFmbjsFesU5SGktD3NoWSc;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/-$$Lambda$SystemServerInitThreadPool$jLyL3DFmbjsFesU5SGktD3NoWSc;->f$2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerInitThreadPool;->lambda$submit$0$SystemServerInitThreadPool(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
