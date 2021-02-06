.class Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;
.super Lcom/android/server/devicepolicy/Owners$FileReadWriter;
.source "Owners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/Owners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceOwnerReadWriter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/Owners;


# direct methods
.method protected constructor <init>(Lcom/android/server/devicepolicy/Owners;)V
    .locals 0

    .line 823
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    .line 824
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/Owners$FileReadWriter;-><init>(Ljava/io/File;)V

    .line 825
    return-void
.end method


# virtual methods
.method readInner(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;)Z
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "depth"    # I
    .param p3, "tag"    # Ljava/lang/String;

    .line 867
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-le p2, v0, :cond_0

    .line 868
    return v1

    .line 870
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x0

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "system-update-policy"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v6

    goto :goto_0

    :sswitch_1
    const-string v3, "freeze-record"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    goto :goto_0

    :sswitch_2
    const-string v3, "device-owner-context"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    goto :goto_0

    :sswitch_3
    const-string v3, "device-owner"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v7

    goto :goto_0

    :sswitch_4
    const-string v3, "device-initializer"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v0

    goto :goto_0

    :sswitch_5
    const-string/jumbo v3, "pending-ota-info"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v5

    :goto_0
    if-eqz v2, :cond_7

    const-string v3, "DevicePolicyManagerService"

    const/4 v8, 0x0

    if-eq v2, v1, :cond_6

    if-eq v2, v0, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    return v7

    .line 895
    :cond_2
    const-string/jumbo v0, "start"

    invoke-interface {p1, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 896
    .local v0, "startDate":Ljava/lang/String;
    const-string v2, "end"

    invoke-interface {p1, v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 897
    .local v2, "endDate":Ljava/lang/String;
    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    .line 898
    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/Owners;->access$402(Lcom/android/server/devicepolicy/Owners;Ljava/time/LocalDate;)Ljava/time/LocalDate;

    .line 899
    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v2}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/Owners;->access$502(Lcom/android/server/devicepolicy/Owners;Ljava/time/LocalDate;)Ljava/time/LocalDate;

    .line 900
    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v4}, Lcom/android/server/devicepolicy/Owners;->access$400(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v5}, Lcom/android/server/devicepolicy/Owners;->access$500(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 901
    const-string v4, "Invalid system update freeze record loaded"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v3, v8}, Lcom/android/server/devicepolicy/Owners;->access$402(Lcom/android/server/devicepolicy/Owners;Ljava/time/LocalDate;)Ljava/time/LocalDate;

    .line 903
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v3, v8}, Lcom/android/server/devicepolicy/Owners;->access$502(Lcom/android/server/devicepolicy/Owners;Ljava/time/LocalDate;)Ljava/time/LocalDate;

    goto :goto_1

    .line 892
    .end local v0    # "startDate":Ljava/lang/String;
    .end local v2    # "endDate":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {p1}, Landroid/app/admin/SystemUpdateInfo;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/devicepolicy/Owners;->access$202(Lcom/android/server/devicepolicy/Owners;Landroid/app/admin/SystemUpdateInfo;)Landroid/app/admin/SystemUpdateInfo;

    .line 893
    goto :goto_1

    .line 889
    :cond_4
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {p1}, Landroid/app/admin/SystemUpdatePolicy;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/devicepolicy/Owners;->access$102(Lcom/android/server/devicepolicy/Owners;Landroid/app/admin/SystemUpdatePolicy;)Landroid/app/admin/SystemUpdatePolicy;

    .line 890
    goto :goto_1

    .line 887
    :cond_5
    goto :goto_1

    .line 876
    :cond_6
    nop

    .line 877
    const-string/jumbo v0, "userId"

    invoke-interface {p1, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 879
    .local v0, "userIdString":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/server/devicepolicy/Owners;->access$302(Lcom/android/server/devicepolicy/Owners;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    goto :goto_1

    .line 880
    :catch_0
    move-exception v2

    .line 881
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing user-id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 872
    .end local v0    # "userIdString":Ljava/lang/String;
    :cond_7
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {p1}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/devicepolicy/Owners;->access$002(Lcom/android/server/devicepolicy/Owners;Lcom/android/server/devicepolicy/Owners$OwnerInfo;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 873
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0, v7}, Lcom/android/server/devicepolicy/Owners;->access$302(Lcom/android/server/devicepolicy/Owners;I)I

    .line 874
    nop

    .line 912
    :cond_8
    :goto_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d4643cb -> :sswitch_5
        -0x7985fa15 -> :sswitch_4
        -0x786d7384 -> :sswitch_3
        -0x714796a2 -> :sswitch_2
        0x4db6d447 -> :sswitch_1
        0x6834f798 -> :sswitch_0
    .end sparse-switch
.end method

.method shouldWrite()Z
    .locals 1

    .line 829
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$000(Lcom/android/server/devicepolicy/Owners;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$100(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    .line 830
    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$200(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 829
    :goto_1
    return v0
.end method

.method writeInner(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 835
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$000(Lcom/android/server/devicepolicy/Owners;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$000(Lcom/android/server/devicepolicy/Owners;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    move-result-object v0

    const-string v2, "device-owner"

    invoke-virtual {v0, p1, v2}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 837
    const-string v0, "device-owner-context"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 838
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v2}, Lcom/android/server/devicepolicy/Owners;->access$300(Lcom/android/server/devicepolicy/Owners;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "userId"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 839
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$100(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 843
    const-string/jumbo v0, "system-update-policy"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 844
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v2}, Lcom/android/server/devicepolicy/Owners;->access$100(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/admin/SystemUpdatePolicy;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 845
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 848
    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$200(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 849
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$200(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v0

    const-string/jumbo v2, "pending-ota-info"

    invoke-virtual {v0, p1, v2}, Landroid/app/admin/SystemUpdateInfo;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 852
    :cond_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$400(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->access$500(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 853
    :cond_3
    const-string v0, "freeze-record"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 854
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v2}, Lcom/android/server/devicepolicy/Owners;->access$400(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 855
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    .line 856
    invoke-static {v2}, Lcom/android/server/devicepolicy/Owners;->access$400(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v2

    .line 855
    const-string/jumbo v3, "start"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 858
    :cond_4
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v2}, Lcom/android/server/devicepolicy/Owners;->access$500(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 859
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    invoke-static {v2}, Lcom/android/server/devicepolicy/Owners;->access$500(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "end"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 861
    :cond_5
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 863
    :cond_6
    return-void
.end method
