.class Lcom/android/server/hdmi/HdmiCecController$2;
.super Ljava/lang/Object;
.source "HdmiCecController.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecController;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecController;

    .line 103
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$2;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Integer;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/Integer;

    .line 106
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 103
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecController$2;->test(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
