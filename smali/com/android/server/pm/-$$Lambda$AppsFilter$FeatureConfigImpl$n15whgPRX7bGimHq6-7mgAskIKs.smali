.class public final synthetic Lcom/android/server/pm/-$$Lambda$AppsFilter$FeatureConfigImpl$n15whgPRX7bGimHq6-7mgAskIKs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$FeatureConfigImpl$n15whgPRX7bGimHq6-7mgAskIKs;->f$0:Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$FeatureConfigImpl$n15whgPRX7bGimHq6-7mgAskIKs;->f$0:Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->lambda$onSystemReady$0$AppsFilter$FeatureConfigImpl(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
