.class public Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;
.super Ljava/lang/Object;
.source "HdmiUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceConfig"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final supportedCodecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/hdmi/HdmiUtils$CodecSad;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/hdmi/HdmiUtils$CodecSad;",
            ">;)V"
        }
    .end annotation

    .line 641
    .local p2, "supportedCodecs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/HdmiUtils$CodecSad;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->name:Ljava/lang/String;

    .line 643
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->supportedCodecs:Ljava/util/List;

    .line 644
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 648
    instance-of v0, p1, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 649
    move-object v0, p1

    check-cast v0, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;

    .line 650
    .local v0, "that":Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->supportedCodecs:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->supportedCodecs:Ljava/util/List;

    .line 651
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 650
    :goto_0
    return v1

    .line 653
    .end local v0    # "that":Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 658
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->supportedCodecs:Ljava/util/List;

    .line 660
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 658
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
