.class Lcom/android/server/devicepolicy/Owners$OwnerInfo;
.super Ljava/lang/Object;
.source "Owners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/Owners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OwnerInfo"
.end annotation


# instance fields
.field public final admin:Landroid/content/ComponentName;

.field public isOrganizationOwnedDevice:Z

.field public final name:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public remoteBugreportHash:Ljava/lang/String;

.field public remoteBugreportUri:Ljava/lang/String;

.field public userRestrictionsMigrated:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "userRestrictionsMigrated"    # Z
    .param p4, "remoteBugreportUri"    # Ljava/lang/String;
    .param p5, "remoteBugreportHash"    # Ljava/lang/String;
    .param p6, "isOrganizationOwnedDevice"    # Z

    .line 978
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 979
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->name:Ljava/lang/String;

    .line 980
    iput-object p2, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;

    .line 981
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    .line 982
    iput-boolean p3, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    .line 983
    iput-object p4, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    .line 984
    iput-object p5, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    .line 985
    iput-boolean p6, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->isOrganizationOwnedDevice:Z

    .line 986
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userRestrictionsMigrated"    # Z
    .param p4, "remoteBugreportUri"    # Ljava/lang/String;
    .param p5, "remoteBugreportHash"    # Ljava/lang/String;
    .param p6, "isOrganizationOwnedDevice"    # Z

    .line 966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 967
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->name:Ljava/lang/String;

    .line 968
    iput-object p2, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    .line 969
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, ""

    invoke-direct {v0, p2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;

    .line 970
    iput-boolean p3, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    .line 971
    iput-object p4, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    .line 972
    iput-object p5, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    .line 973
    iput-boolean p6, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->isOrganizationOwnedDevice:Z

    .line 974
    return-void
.end method

.method public static readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    .locals 21
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 1013
    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-string/jumbo v2, "package"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1014
    .local v2, "packageName":Ljava/lang/String;
    const-string/jumbo v3, "name"

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1015
    .local v11, "name":Ljava/lang/String;
    nop

    .line 1016
    const-string v3, "component"

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1017
    .local v12, "componentName":Ljava/lang/String;
    nop

    .line 1018
    const-string/jumbo v3, "userRestrictionsMigrated"

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1019
    .local v13, "userRestrictionsMigratedStr":Ljava/lang/String;
    nop

    .line 1020
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 1021
    .local v14, "userRestrictionsMigrated":Z
    const-string/jumbo v4, "remoteBugreportUri"

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1023
    .local v15, "remoteBugreportUri":Ljava/lang/String;
    const-string/jumbo v4, "remoteBugreportHash"

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1025
    .local v16, "remoteBugreportHash":Ljava/lang/String;
    nop

    .line 1026
    const-string v4, "canAccessDeviceIds"

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1027
    .local v10, "canAccessDeviceIdsStr":Ljava/lang/String;
    nop

    .line 1028
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 1029
    .local v17, "canAccessDeviceIds":Z
    nop

    .line 1030
    const-string/jumbo v4, "isPoOrganizationOwnedDevice"

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1031
    .local v1, "isOrgOwnedDeviceStr":Ljava/lang/String;
    nop

    .line 1032
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    or-int v18, v3, v17

    .line 1035
    .local v18, "isOrgOwnedDevice":Z
    if-eqz v12, :cond_1

    .line 1036
    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 1037
    .local v3, "admin":Landroid/content/ComponentName;
    if-eqz v3, :cond_0

    .line 1038
    new-instance v19, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    move-object/from16 v4, v19

    move-object v5, v11

    move-object v6, v3

    move v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v20, v10

    .end local v10    # "canAccessDeviceIdsStr":Ljava/lang/String;
    .local v20, "canAccessDeviceIdsStr":Ljava/lang/String;
    move/from16 v10, v18

    invoke-direct/range {v4 .. v10}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;Z)V

    return-object v19

    .line 1043
    .end local v20    # "canAccessDeviceIdsStr":Ljava/lang/String;
    .restart local v10    # "canAccessDeviceIdsStr":Ljava/lang/String;
    :cond_0
    move-object/from16 v20, v10

    .end local v10    # "canAccessDeviceIdsStr":Ljava/lang/String;
    .restart local v20    # "canAccessDeviceIdsStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing owner file. Bad component name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DevicePolicyManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1035
    .end local v3    # "admin":Landroid/content/ComponentName;
    .end local v20    # "canAccessDeviceIdsStr":Ljava/lang/String;
    .restart local v10    # "canAccessDeviceIdsStr":Ljava/lang/String;
    :cond_1
    move-object/from16 v20, v10

    .line 1049
    .end local v10    # "canAccessDeviceIdsStr":Ljava/lang/String;
    .restart local v20    # "canAccessDeviceIdsStr":Ljava/lang/String;
    :goto_0
    new-instance v10, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    move-object v3, v10

    move-object v4, v11

    move-object v5, v2

    move v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move/from16 v9, v18

    invoke-direct/range {v3 .. v9}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    return-object v10
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isOrganizationOwnedDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->isOrganizationOwnedDevice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1058
    return-void
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 989
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 990
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "package"

    invoke-interface {p1, v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 991
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 992
    const-string/jumbo v2, "name"

    invoke-interface {p1, v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 994
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 995
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "component"

    invoke-interface {p1, v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 997
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    .line 998
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 997
    const-string/jumbo v2, "userRestrictionsMigrated"

    invoke-interface {p1, v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 999
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1000
    const-string/jumbo v2, "remoteBugreportUri"

    invoke-interface {p1, v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1002
    :cond_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1003
    const-string/jumbo v2, "remoteBugreportHash"

    invoke-interface {p1, v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1005
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->isOrganizationOwnedDevice:Z

    if-eqz v1, :cond_4

    .line 1006
    nop

    .line 1007
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 1006
    const-string/jumbo v2, "isPoOrganizationOwnedDevice"

    invoke-interface {p1, v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1009
    :cond_4
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1010
    return-void
.end method
