.class Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;
.super Ljava/lang/Object;
.source "CoreSettingsObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CoreSettingsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceConfigEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field coreSettingKey:Ljava/lang/String;

.field defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field flag:Ljava/lang/String;

.field namespace:Ljava/lang/String;

.field type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "flag"    # Ljava/lang/String;
    .param p3, "coreSettingKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;, "Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry<TT;>;"
    .local p4, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p5, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->flag:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->coreSettingKey:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->type:Ljava/lang/Class;

    .line 60
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->defaultValue:Ljava/lang/Object;

    .line 61
    return-void
.end method
