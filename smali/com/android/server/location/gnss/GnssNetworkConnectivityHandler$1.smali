.class Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "GnssNetworkConnectivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;


# direct methods
.method constructor <init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 229
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 11

    .line 232
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->access$200(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    invoke-static {v0, v1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->access$202(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->access$300(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 237
    .local v0, "subManager":Landroid/telephony/SubscriptionManager;
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-static {v1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->access$300(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 238
    .local v1, "telManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    .line 239
    nop

    .line 240
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 241
    .local v2, "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 242
    .local v3, "activeSubIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const-string v4, "GnssNetworkConnectivityHandler"

    if-eqz v2, :cond_4

    .line 243
    invoke-static {}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->access$100()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Active Sub List size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    .line 246
    .local v6, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v7, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-static {v7}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->access$200(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 248
    nop

    .line 249
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v7

    .line 250
    .local v7, "subIdTelManager":Landroid/telephony/TelephonyManager;
    if-eqz v7, :cond_3

    .line 251
    invoke-static {}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->access$100()Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Listener sub"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_2
    new-instance v8, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;

    iget-object v9, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 253
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Ljava/lang/Integer;)V

    .line 254
    .local v8, "subIdPhoneStateListener":Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;
    iget-object v9, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-static {v9}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->access$200(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const/16 v9, 0x800

    invoke-virtual {v7, v8, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 260
    .end local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v7    # "subIdTelManager":Landroid/telephony/TelephonyManager;
    .end local v8    # "subIdPhoneStateListener":Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;
    :cond_3
    goto :goto_0

    .line 263
    :cond_4
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 264
    invoke-static {v5}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->access$200(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 265
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;>;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 266
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 267
    .local v6, "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 268
    nop

    .line 269
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v7

    .line 270
    .restart local v7    # "subIdTelManager":Landroid/telephony/TelephonyManager;
    if-eqz v7, :cond_6

    .line 271
    invoke-static {}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->access$100()Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unregister listener sub "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_5
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/PhoneStateListener;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 275
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 277
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Telephony Manager for Sub "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .end local v6    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;>;"
    .end local v7    # "subIdTelManager":Landroid/telephony/TelephonyManager;
    :cond_7
    :goto_2
    goto :goto_1

    .line 282
    :cond_8
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-static {v4}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->access$000(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 283
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    const/4 v6, -0x1

    invoke-static {v4, v6}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->access$002(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I)I

    .line 286
    .end local v2    # "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v3    # "activeSubIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;>;>;"
    :cond_9
    return-void
.end method
