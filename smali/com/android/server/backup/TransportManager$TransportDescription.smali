.class Lcom/android/server/backup/TransportManager$TransportDescription;
.super Ljava/lang/Object;
.source "TransportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/TransportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransportDescription"
.end annotation


# instance fields
.field private configurationIntent:Landroid/content/Intent;

.field private currentDestinationString:Ljava/lang/String;

.field private dataManagementIntent:Landroid/content/Intent;

.field private dataManagementLabel:Ljava/lang/CharSequence;

.field private name:Ljava/lang/String;

.field private final transportDirName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "transportDirName"    # Ljava/lang/String;
    .param p3, "configurationIntent"    # Landroid/content/Intent;
    .param p4, "currentDestinationString"    # Ljava/lang/String;
    .param p5, "dataManagementIntent"    # Landroid/content/Intent;
    .param p6, "dataManagementLabel"    # Ljava/lang/CharSequence;

    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    iput-object p1, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->name:Ljava/lang/String;

    .line 720
    iput-object p2, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->transportDirName:Ljava/lang/String;

    .line 721
    iput-object p3, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->configurationIntent:Landroid/content/Intent;

    .line 722
    iput-object p4, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->currentDestinationString:Ljava/lang/String;

    .line 723
    iput-object p5, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->dataManagementIntent:Landroid/content/Intent;

    .line 724
    iput-object p6, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->dataManagementLabel:Ljava/lang/CharSequence;

    .line 725
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;Lcom/android/server/backup/TransportManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/content/Intent;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Landroid/content/Intent;
    .param p6, "x5"    # Ljava/lang/CharSequence;
    .param p7, "x6"    # Lcom/android/server/backup/TransportManager$1;

    .line 704
    invoke-direct/range {p0 .. p6}, Lcom/android/server/backup/TransportManager$TransportDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 704
    iget-object v0, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/backup/TransportManager$TransportDescription;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/TransportManager$TransportDescription;
    .param p1, "x1"    # Ljava/lang/String;

    .line 704
    iput-object p1, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 704
    iget-object v0, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->transportDirName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/backup/TransportManager$TransportDescription;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 704
    iget-object v0, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->configurationIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/backup/TransportManager$TransportDescription;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/TransportManager$TransportDescription;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 704
    iput-object p1, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->configurationIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 704
    iget-object v0, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->currentDestinationString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/backup/TransportManager$TransportDescription;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/TransportManager$TransportDescription;
    .param p1, "x1"    # Ljava/lang/String;

    .line 704
    iput-object p1, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->currentDestinationString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/backup/TransportManager$TransportDescription;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 704
    iget-object v0, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->dataManagementIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/backup/TransportManager$TransportDescription;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/TransportManager$TransportDescription;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 704
    iput-object p1, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->dataManagementIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 704
    iget-object v0, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->dataManagementLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/backup/TransportManager$TransportDescription;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/backup/TransportManager$TransportDescription;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 704
    iput-object p1, p0, Lcom/android/server/backup/TransportManager$TransportDescription;->dataManagementLabel:Ljava/lang/CharSequence;

    return-object p1
.end method
