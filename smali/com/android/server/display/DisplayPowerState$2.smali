.class Lcom/android/server/display/DisplayPowerState$2;
.super Landroid/util/IntProperty;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Lcom/android/server/display/DisplayPowerState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .line 117
    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/server/display/DisplayPowerState;)Ljava/lang/Integer;
    .locals 1
    .param p1, "object"    # Lcom/android/server/display/DisplayPowerState;

    .line 125
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 117
    check-cast p1, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerState$2;->get(Lcom/android/server/display/DisplayPowerState;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/server/display/DisplayPowerState;I)V
    .locals 0
    .param p1, "object"    # Lcom/android/server/display/DisplayPowerState;
    .param p2, "value"    # I

    .line 120
    invoke-virtual {p1, p2}, Lcom/android/server/display/DisplayPowerState;->setScreenBrightness(I)V

    .line 121
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    .line 117
    check-cast p1, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayPowerState$2;->setValue(Lcom/android/server/display/DisplayPowerState;I)V

    return-void
.end method
