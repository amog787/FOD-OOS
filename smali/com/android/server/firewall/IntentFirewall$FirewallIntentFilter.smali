.class Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;
.super Landroid/content/IntentFilter;
.source "IntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/IntentFirewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirewallIntentFilter"
.end annotation


# instance fields
.field private final rule:Lcom/android/server/firewall/IntentFirewall$Rule;


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/IntentFirewall$Rule;)V
    .locals 0
    .param p1, "rule"    # Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 492
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 493
    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;->rule:Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 494
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Lcom/android/server/firewall/IntentFirewall$Rule;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    .line 489
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;->rule:Lcom/android/server/firewall/IntentFirewall$Rule;

    return-object v0
.end method
