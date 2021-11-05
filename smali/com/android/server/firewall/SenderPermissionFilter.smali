.class Lcom/android/server/firewall/SenderPermissionFilter;
.super Ljava/lang/Object;
.source "SenderPermissionFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory;


# instance fields
.field private final mPermission:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/android/server/firewall/SenderPermissionFilter$1;

    const-string/jumbo v1, "sender-permission"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/SenderPermissionFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/SenderPermissionFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/firewall/SenderPermissionFilter;->mPermission:Ljava/lang/String;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/firewall/SenderPermissionFilter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/android/server/firewall/SenderPermissionFilter$1;

    .line 26
    invoke-direct {p0, p1}, Lcom/android/server/firewall/SenderPermissionFilter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 6
    .param p1, "ifw"    # Lcom/android/server/firewall/IntentFirewall;
    .param p2, "resolvedComponent"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "callerUid"    # I
    .param p5, "callerPid"    # I
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "receivingUid"    # I

    .line 41
    iget-object v1, p0, Lcom/android/server/firewall/SenderPermissionFilter;->mPermission:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, p1

    move v2, p5

    move v3, p4

    move v4, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/firewall/IntentFirewall;->checkComponentPermission(Ljava/lang/String;IIIZ)Z

    move-result v0

    return v0
.end method
