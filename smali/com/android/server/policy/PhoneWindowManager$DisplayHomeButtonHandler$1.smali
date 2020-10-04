.class Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    .line 1821
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1824
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->access$2500(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1825
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->access$2502(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;Z)Z

    .line 1826
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->access$2600(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome(I)V

    .line 1828
    :cond_0
    return-void
.end method
