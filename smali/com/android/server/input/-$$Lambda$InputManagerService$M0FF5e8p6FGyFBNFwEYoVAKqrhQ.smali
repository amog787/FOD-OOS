.class public final synthetic Lcom/android/server/input/-$$Lambda$InputManagerService$M0FF5e8p6FGyFBNFwEYoVAKqrhQ;
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

    iput-object p1, p0, Lcom/android/server/input/-$$Lambda$InputManagerService$M0FF5e8p6FGyFBNFwEYoVAKqrhQ;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/-$$Lambda$InputManagerService$M0FF5e8p6FGyFBNFwEYoVAKqrhQ;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->lambda$dumpAssociations$0(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
