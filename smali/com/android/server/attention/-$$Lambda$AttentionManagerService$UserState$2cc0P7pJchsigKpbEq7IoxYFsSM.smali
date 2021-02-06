.class public final synthetic Lcom/android/server/attention/-$$Lambda$AttentionManagerService$UserState$2cc0P7pJchsigKpbEq7IoxYFsSM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/attention/AttentionManagerService$UserState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/attention/AttentionManagerService$UserState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/attention/-$$Lambda$AttentionManagerService$UserState$2cc0P7pJchsigKpbEq7IoxYFsSM;->f$0:Lcom/android/server/attention/AttentionManagerService$UserState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/attention/-$$Lambda$AttentionManagerService$UserState$2cc0P7pJchsigKpbEq7IoxYFsSM;->f$0:Lcom/android/server/attention/AttentionManagerService$UserState;

    invoke-virtual {v0}, Lcom/android/server/attention/AttentionManagerService$UserState;->lambda$bindLocked$0$AttentionManagerService$UserState()V

    return-void
.end method
