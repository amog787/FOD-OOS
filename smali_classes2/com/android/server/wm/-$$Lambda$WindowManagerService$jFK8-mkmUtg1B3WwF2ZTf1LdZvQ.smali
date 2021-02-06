.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerService$jFK8-mkmUtg1B3WwF2ZTf1LdZvQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>([II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$jFK8-mkmUtg1B3WwF2ZTf1LdZvQ;->f$0:[I

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$jFK8-mkmUtg1B3WwF2ZTf1LdZvQ;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$jFK8-mkmUtg1B3WwF2ZTf1LdZvQ;->f$0:[I

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$jFK8-mkmUtg1B3WwF2ZTf1LdZvQ;->f$1:I

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService;->lambda$tokenCountExceed$2([IILcom/android/server/wm/DisplayContent;)V

    return-void
.end method
