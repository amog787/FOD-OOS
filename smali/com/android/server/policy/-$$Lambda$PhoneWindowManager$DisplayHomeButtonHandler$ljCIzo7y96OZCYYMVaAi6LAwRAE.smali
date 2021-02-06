.class public final synthetic Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$DisplayHomeButtonHandler$ljCIzo7y96OZCYYMVaAi6LAwRAE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$DisplayHomeButtonHandler$ljCIzo7y96OZCYYMVaAi6LAwRAE;->f$0:Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$DisplayHomeButtonHandler$ljCIzo7y96OZCYYMVaAi6LAwRAE;->f$0:Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->lambda$handleHomeButton$0$PhoneWindowManager$DisplayHomeButtonHandler()V

    return-void
.end method
