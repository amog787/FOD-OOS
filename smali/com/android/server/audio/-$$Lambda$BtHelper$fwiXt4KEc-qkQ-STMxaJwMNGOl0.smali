.class public final synthetic Lcom/android/server/audio/-$$Lambda$BtHelper$fwiXt4KEc-qkQ-STMxaJwMNGOl0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/-$$Lambda$BtHelper$fwiXt4KEc-qkQ-STMxaJwMNGOl0;->f$0:Ljava/io/PrintWriter;

    iput-object p2, p0, Lcom/android/server/audio/-$$Lambda$BtHelper$fwiXt4KEc-qkQ-STMxaJwMNGOl0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/-$$Lambda$BtHelper$fwiXt4KEc-qkQ-STMxaJwMNGOl0;->f$0:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/audio/-$$Lambda$BtHelper$fwiXt4KEc-qkQ-STMxaJwMNGOl0;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/android/server/audio/BtHelper$ScoClient;

    invoke-static {v0, v1, p1}, Lcom/android/server/audio/BtHelper;->lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/audio/BtHelper$ScoClient;)V

    return-void
.end method
