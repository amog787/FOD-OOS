.class public final synthetic Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$DisplayHomeButtonHandler$mDqq2TX5_l1ydQz3e0WFhnBNreI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

.field public final synthetic f$1:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$DisplayHomeButtonHandler$mDqq2TX5_l1ydQz3e0WFhnBNreI;->f$0:Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    iput-object p2, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$DisplayHomeButtonHandler$mDqq2TX5_l1ydQz3e0WFhnBNreI;->f$1:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$DisplayHomeButtonHandler$mDqq2TX5_l1ydQz3e0WFhnBNreI;->f$0:Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    iget-object v1, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$DisplayHomeButtonHandler$mDqq2TX5_l1ydQz3e0WFhnBNreI;->f$1:Landroid/view/KeyEvent;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->lambda$handleHomeButton$1$PhoneWindowManager$DisplayHomeButtonHandler(Landroid/view/KeyEvent;)V

    return-void
.end method
